import json
import subprocess
import time
import re
import os
from colorama import Fore, Style

class RegexTester:
    def __init__(self, max_retries=3, retry_delay=1):
        self.max_retries = max_retries
        self.retry_delay = retry_delay

    def get_latest_revision(self, unique_id):
        url = f"https://regex101.com/api/regex/{unique_id}"
        retries = 0
        while retries < self.max_retries:
            try:
                response = subprocess.check_output(["curl", "-s", url])
                data = json.loads(response.decode("utf-8"))
                revisions = data["versions"]
                latest_revision = revisions[-1]
                return latest_revision
            except (subprocess.CalledProcessError, json.JSONDecodeError) as e:
                print(f"{Fore.YELLOW}Warning: {str(e)}. Retrying in {self.retry_delay} second(s)...{Style.RESET_ALL}")
                retries += 1
                time.sleep(self.retry_delay)
        raise Exception("Failed to retrieve latest revision after multiple retries.")

    def get_regex_data(self, unique_id, revision):
        url = f"https://regex101.com/api/regex/{unique_id}/{revision}"
        retries = 0
        while retries < self.max_retries:
            try:
                response = subprocess.check_output(["curl", "-s", url])
                data = json.loads(response.decode("utf-8"))
                regex_pattern = data["regex"]
                unit_tests = data["unitTests"]
                flavor = data["flavor"]
                return regex_pattern, unit_tests, flavor
            except (subprocess.CalledProcessError, json.JSONDecodeError) as e:
                print(f"{Fore.YELLOW}Warning: {str(e)}. Retrying in {self.retry_delay} second(s)...{Style.RESET_ALL}")
                retries += 1
                time.sleep(self.retry_delay)
        raise Exception("Failed to retrieve regex data after multiple retries.")

    def run_unit_tests(self, regex_pattern, flavor, unit_tests):
        success_count = 0
        failure_count = 0
        if flavor == "pcre2":
            regex_flags = re.MULTILINE | re.IGNORECASE | re.DOTALL
        else:
            regex_flags = re.MULTILINE | re.IGNORECASE

        for test in unit_tests:
            test_string = test["testString"]
            criteria = test["criteria"]
            target = test["target"]

            if target == "REGEX":
                matches = re.finditer(regex_pattern, test_string, regex_flags)
                match_found = bool(list(matches))

                if criteria == "DOES_MATCH":
                    if match_found:
                        success_count += 1
                        print(f"{Fore.GREEN}Passed test{Style.RESET_ALL}: '{test_string}'")
                    else:
                        failure_count += 1
                        print(f"{Fore.RED}Should match{Style.RESET_ALL} '{test_string}'")
                elif criteria == "DOES_NOT_MATCH":
                    if not match_found:
                        success_count += 1
                        print(f"{Fore.GREEN}Passed test{Style.RESET_ALL}: '{test_string}'")
                    else:
                        failure_count += 1
                        print(f"{Fore.RED}Shouldn't match{Style.RESET_ALL} '{test_string}'")

        return success_count, failure_count

def extract_regex_ids(data):
    regex_ids = {}

    def extract_ids(obj):
        if isinstance(obj, dict):
            if "fields" in obj:
                for field in obj["fields"]:
                    if "regexID" in field:
                        regex_id = field["regexID"]
                        name = obj.get("name", "")
                        regex_ids[regex_id] = name
            for value in obj.values():
                extract_ids(value)
        elif isinstance(obj, list):
            for item in obj:
                extract_ids(item)

    extract_ids(data)
    return regex_ids

def main():
    tester = RegexTester()
    regex_dir = "./db/custom_formats"
    tested_ids = set()  # Set to store tested regexIDs

    for root, dirs, files in os.walk(regex_dir):
        for filename in files:
            if filename.endswith(".json"):
                filepath = os.path.join(root, filename)
                with open(filepath, "r") as f:
                    data = json.load(f)

                regex_ids = extract_regex_ids(data)

                for regex_id, name in regex_ids.items():
                    if regex_id not in tested_ids:
                        tested_ids.add(regex_id)
                        try:
                            latest_revision = tester.get_latest_revision(regex_id)
                            regex_pattern, unit_tests, flavor = tester.get_regex_data(regex_id, latest_revision)
                            print(f"====================")
                            print(f"Running Test: {Fore.YELLOW}{name}{Style.RESET_ALL}")
                            print(f"Regex: {Fore.YELLOW}{regex_pattern}{Style.RESET_ALL}")
                            print(f"Link: {Fore.BLUE}https://regex101.com/r/{regex_id}{Style.RESET_ALL}")
                            print(f"====================")
                            print()

                            total_tests = len(unit_tests)
                            passed_tests, failed_tests = tester.run_unit_tests(regex_pattern, flavor, unit_tests)

                            score_color = Fore.GREEN if passed_tests == total_tests else Fore.RED
                            status_text = "PASS" if failed_tests == 0 else "FAIL"
                            status_color = Fore.GREEN if status_text == "PASS" else Fore.RED

                            print()
                            print(f"====================")
                            print(f"Score: {score_color}{passed_tests} / {total_tests}{Style.RESET_ALL}")
                            print(f"Status: {status_color}{status_text}{Style.RESET_ALL}")
                            print(f"====================")
                            print()
                        except Exception as e:
                            print(f"{Fore.RED}Error processing regex {regex_id}: {str(e)}{Style.RESET_ALL}")
                            print()

if __name__ == "__main__":
    main()