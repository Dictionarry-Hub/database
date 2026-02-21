# CLAUDE.md

Ce fichier guide Claude Code (claude.ai/code) pour travailler sur ce dépôt.

## Présentation

Fork de la [Dictionarry Database](https://github.com/Dictionarry-Hub/database) (base YAML Profilarr pour Radarr/Sonarr). Ce fork ajoute du contenu personnalisé (notamment français) tout en restant synchronisable avec l'upstream.

## Règle fondamentale : ne jamais modifier les fichiers upstream

Ce repo est synchronisé avec `upstream` (Dictionarry-Hub/database). Pour garantir des merges sans conflit :

- **INTERDIT** de modifier ou supprimer un fichier existant venant d'upstream
- **Uniquement ajouter de nouveaux fichiers**
- Les ajouts français sont préfixés `FR - ` (ex: `FR - Multi.yml`, `FR - VFF.yml`)
- Les ajouts généraux utilisent un nom unique qui n'existe pas upstream

## Synchronisation upstream

```bash
git fetch upstream
git merge upstream/stable
```

Le remote `upstream` pointe vers `https://github.com/Dictionarry-Hub/database.git`.

## Structure du dépôt

- `regex_patterns/` — Définitions de patterns regex avec cas de test intégrés
- `custom_formats/` — Définitions de formats personnalisés référençant les patterns regex via des conditions
- `profiles/` — Profils qualité combinant des formats personnalisés avec des scores (`custom_formats_radarr`, `custom_formats_sonarr`)
- `media_management/` — Conventions de nommage, définitions de qualité, paramètres divers
- `templates/` — Templates YAML pour `tierCreator.py`
- `scripts/tierCreator.py` — Génère des formats personnalisés et patterns regex par tier depuis un JSON

## Script tierCreator

```bash
python3 scripts/tierCreator.py <json_file> --resolution <SD|720p|1080p|2160p> --type <Quality|Balanced> [--dry-run]
```

## Schémas YAML

**Pattern regex** (`regex_patterns/*.yml`) :
```yaml
name: PatternName
pattern: regex_string
description: Ce que ça matche
tags: [Catégorie]
tests:
- expected: true/false
  id: integer
  input: chaîne_de_test
  matchSpan: {start: int, end: int}
  matchedContent: string
  passes: boolean
```

**Format personnalisé** (`custom_formats/*.yml`) :
```yaml
name: FormatName
description: Ce que ça matche
tags: [Catégorie, SousCatégorie]
conditions:
- name: NomCondition
  negate: false
  pattern: RéférencePattern
  required: true/false
  type: release_title|release_group|source|resolution
tests: []
```

**Profil** (`profiles/*.yml`) :
```yaml
name: Résolution Stratégie
description: ...
tags: [résolution, stratégie]
upgradesAllowed: true
minCustomFormatScore: integer
custom_formats:
- name: NomFormat
  score: integer
qualities:
- id: integer
  name: NomQualité
```

## Format des commits

Format : `type(component): Description`

**Types** : `create` (nouveau), `add` (ajout à un système existant), `tweak` (ajustement), `fix` (correction), `delete` (suppression)

**Components** : `format`, `regex`, `profile`

## Workflow Git

- `stable` est la branche principale
- `upstream/stable` est la source de vérité pour le contenu Dictionarry
