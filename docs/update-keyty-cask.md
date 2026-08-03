# Automated cask updates

This tap can update itself from a Keyty release via `.github/workflows/update-keyty-cask.yml`.

Supported triggers:

- `workflow_dispatch`
- `repository_dispatch` with event type `keyty_release_published`

Required release payload fields:

- `version`: `1.1.0`
- `tag`: `v1.1.0`
- `dmg_url`: `https://github.com/keytyapp/Keyty/releases/download/v1.1.0/Keyty.dmg`
- `sha256`: SHA-256 for the DMG

The workflow updates [Casks/keyty.rb](/Users/esphynox/Projects/homebrew-tap/Casks/keyty.rb), creates a local release commit, taps the checked-out repo with `brew tap --custom-remote keytyapp/tap "$GITHUB_WORKSPACE"`, runs `brew audit --cask keytyapp/tap/keyty`, pushes a branch named `release/keyty-<version>`, and opens a pull request.

To trigger it from the `Keyty` repo, use a token that can dispatch workflows in `keytyapp/homebrew-tap`.
