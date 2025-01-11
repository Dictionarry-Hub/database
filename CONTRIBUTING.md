# Contributing

## Commit Message Format

```
type(component): Description
[Optional body]
```

## Types and Components

### Change Types

| Type     | Purpose                                            | Example                                            |
| -------- | -------------------------------------------------- | -------------------------------------------------- |
| `create` | Building entirely new components or systems        | `create(profile): 2160p Remux quality profile`     |
| `add`    | Adding entries to existing systems                 | `add(format): de[42] as Tier 4 GPPi group`         |
| `tweak`  | Fine-tuning and adjustments to existing components | `tweak(format): Better h265 parsing for 1080p WEB` |
| `fix`    | Corrections and bug fixes                          | `fix(regex): Required negation for remux pattern`  |

### Components

| Component | Purpose                     | Includes                                                                                                 |
| --------- | --------------------------- | -------------------------------------------------------------------------------------------------------- |
| `format`  | Changes to Custom Formats   | - Format definitions<br>- Scoring adjustments<br>- Release group configurations<br>- Quality preferences |
| `regex`   | Changes to regex patterns   | - Pattern definitions<br>- Matching logic<br>- Parser improvements<br>- Detection rules                  |
| `profile` | Changes to Quality Profiles | - Profile creation/modification<br>- Quality settings<br>- Scoring systems<br>- Default configurations   |

## Contributing with Profilarr

Profilarr was built specifically to maintain these standards, making it our recommended way to contribute. While we welcome external contributions, please ensure they strictly follow these commit guidelines.
