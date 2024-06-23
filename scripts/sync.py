import os
import json
from pymongo import MongoClient
from pymongo.server_api import ServerApi
from colorama import Fore, Style, init

init(autoreset=True)  # Initialize colorama

def sync_custom_formats(db):
    print(f"{Fore.CYAN}=== Starting Custom Formats Sync ==={Style.RESET_ALL}")
    collection = db.custom_formats
    base_path = 'db/custom_formats'
    
    total_formats = 0
    updated_formats = 0
    inserted_formats = 0
    skipped_formats = 0
    
    for category in os.listdir(base_path):
        category_path = os.path.join(base_path, category)
        if os.path.isdir(category_path):
            print(f"\n{Fore.YELLOW}Processing category: {category}{Style.RESET_ALL}")
            for filename in os.listdir(category_path):
                if filename.endswith('.json'):
                    file_path = os.path.join(category_path, filename)
                    try:
                        with open(file_path, 'r') as f:
                            content = f.read()
                            if not content.strip():
                                print(f"  {Fore.RED}! Skipped{Style.RESET_ALL} {filename} (Empty file)")
                                skipped_formats += 1
                                continue
                            data = json.loads(content)
                        
                        name = data.get('name', os.path.splitext(filename)[0])
                        
                        existing_doc = collection.find_one({'name': name})
                        
                        if existing_doc:
                            result = collection.update_one(
                                {'name': name},
                                {'$set': {'category': category, **data}}
                            )
                            if result.modified_count > 0:
                                updated_formats += 1
                                print(f"  {Fore.GREEN}✓ Updated{Style.RESET_ALL} {name}")
                            else:
                                print(f"  {Fore.YELLOW}○ No changes{Style.RESET_ALL} {name}")
                        else:
                            result = collection.insert_one({'category': category, **data})
                            inserted_formats += 1
                            print(f"  {Fore.BLUE}+ Inserted{Style.RESET_ALL} {name}")
                        
                        total_formats += 1
                    except json.JSONDecodeError:
                        print(f"  {Fore.RED}! Skipped{Style.RESET_ALL} {filename} (Invalid JSON)")
                        skipped_formats += 1

    print(f"\n{Fore.CYAN}=== Custom Formats Sync Summary ==={Style.RESET_ALL}")
    print(f"Total formats processed: {total_formats}")
    print(f"Updated: {Fore.GREEN}{updated_formats}{Style.RESET_ALL}")
    print(f"Inserted: {Fore.BLUE}{inserted_formats}{Style.RESET_ALL}")
    print(f"Unchanged: {Fore.YELLOW}{total_formats - updated_formats - inserted_formats}{Style.RESET_ALL}")
    print(f"Skipped: {Fore.RED}{skipped_formats}{Style.RESET_ALL}")

def sync_quality_profiles(db):
    print(f"\n{Fore.CYAN}=== Starting Quality Profiles Sync ==={Style.RESET_ALL}")
    collection = db.quality_profiles
    base_path = 'db/quality_profiles'
    
    total_profiles = 0
    updated_profiles = 0
    inserted_profiles = 0
    skipped_profiles = 0
    
    for filename in os.listdir(base_path):
        if filename.endswith('.json'):
            file_path = os.path.join(base_path, filename)
            try:
                with open(file_path, 'r') as f:
                    content = f.read()
                    if not content.strip():
                        print(f"{Fore.RED}! Skipped{Style.RESET_ALL} {filename} (Empty file)")
                        skipped_profiles += 1
                        continue
                    data = json.loads(content)
                
                # Handle the case where data is a list
                if isinstance(data, list):
                    profiles = data
                else:
                    profiles = [data]  # Wrap single profile in a list

                for profile in profiles:
                    name = profile.get('name', os.path.splitext(filename)[0])
                    
                    result = collection.replace_one(
                        {'name': name},
                        profile,
                        upsert=True
                    )
                    
                    total_profiles += 1
                    if result.modified_count > 0:
                        updated_profiles += 1
                        print(f"{Fore.GREEN}✓ Updated{Style.RESET_ALL} {name}")
                    elif result.upserted_id:
                        inserted_profiles += 1
                        print(f"{Fore.BLUE}+ Inserted{Style.RESET_ALL} {name}")
                    else:
                        print(f"{Fore.YELLOW}○ No changes{Style.RESET_ALL} {name}")

            except json.JSONDecodeError:
                print(f"{Fore.RED}! Skipped{Style.RESET_ALL} {filename} (Invalid JSON)")
                skipped_profiles += 1

    print(f"\n{Fore.CYAN}=== Quality Profiles Sync Summary ==={Style.RESET_ALL}")
    print(f"Total profiles processed: {total_profiles}")
    print(f"Updated: {Fore.GREEN}{updated_profiles}{Style.RESET_ALL}")
    print(f"Inserted: {Fore.BLUE}{inserted_profiles}{Style.RESET_ALL}")
    print(f"Unchanged: {Fore.YELLOW}{total_profiles - updated_profiles - inserted_profiles}{Style.RESET_ALL}")
    print(f"Skipped: {Fore.RED}{skipped_profiles}{Style.RESET_ALL}")

def main():
    print(f"{Fore.CYAN}Starting sync process...{Style.RESET_ALL}")
    uri = os.environ.get('MONGODB_URI')
    if not uri:
        raise ValueError("MONGODB_URI environment variable is not set")

    client = MongoClient(uri, server_api=ServerApi('1'))
    db = client.dictionarry

    try:
        sync_custom_formats(db)
        sync_quality_profiles(db)
        print(f"\n{Fore.GREEN}Sync completed successfully.{Style.RESET_ALL}")
    except Exception as e:
        print(f"\n{Fore.RED}An error occurred: {e}{Style.RESET_ALL}")
    finally:
        client.close()

if __name__ == "__main__":
    main()