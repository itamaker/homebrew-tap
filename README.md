# itamaker/homebrew-tap

Homebrew tap for casks and formulae maintained by `itamaker`.

## Usage

Tap the repository:

```bash
brew tap itamaker/tap https://github.com/itamaker/homebrew-tap
```

Install a cask:

```bash
brew install --cask go-chrome-ai
```

Install a formula:

```bash
brew install itamaker/tap/skillforge
```

## Current Casks

- `go-chrome-ai`

## Current Formulae

- `skillforge`
- `runlens`
- `ragcheck`
- `promptdeck`
- `datasetlint`

## Current Release Baseline

The formulae currently track the live `v0.2.0` releases of the five Go CLI tools.

## Source Repositories

Each CLI's source repo was renamed to add a `-skill` suffix after it gained a bundled Claude Code skill; the binary/formula names below are unchanged.

- `skillforge`: `https://github.com/itamaker/forge-skill`
- `runlens`: `https://github.com/itamaker/runlens-skill`
- `ragcheck`: `https://github.com/itamaker/ragcheck-skill`
- `promptdeck`: `https://github.com/itamaker/promptdeck-skill`
- `datasetlint`: `https://github.com/itamaker/datasetlint-skill`

## Access Note

The five AI CLI formulae download release assets from public GitHub repositories and are available for normal public installation.
