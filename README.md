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

## Source Repositories

- `skillforge`: `https://github.com/itamaker/skillforge`
- `runlens`: `https://github.com/itamaker/runlens`
- `ragcheck`: `https://github.com/itamaker/ragcheck`
- `promptdeck`: `https://github.com/itamaker/promptdeck`
- `datasetlint`: `https://github.com/itamaker/datasetlint`

## Access Note

The five AI CLI formulae currently download release assets from private GitHub repositories.

That means:

- installation works for accounts that can access those repositories
- public installation will fail until the source repositories are made public or the release assets are published somewhere publicly accessible
