# GastonDalla's Homebrew tap

Homebrew casks for apps by GastonDalla.

| Cask | App |
| --- | --- |
| `earmatch` | [Earmatch](https://github.com/GastonDalla/earmatch): practise beatmatching by ear on rekordbox 7 (macOS 14 or later, Apple silicon or Intel) |

## Install

```sh
brew install --cask gastondalla/tap/earmatch
```

Earmatch updates itself, so `brew upgrade` leaves it alone unless you pass `--greedy`.

## Uninstall

```sh
brew uninstall --cask earmatch
```

To also delete its settings and practice history:

```sh
brew uninstall --zap --cask earmatch
```

## Updates

A daily workflow reads the latest [Earmatch release](https://github.com/GastonDalla/earmatch/releases/latest) and updates the cask's version and checksum.
