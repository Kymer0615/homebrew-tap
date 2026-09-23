# Kymer0615 Homebrew tap

## Countdown Menu Bar

Native macOS menu bar countdowns with exact deadlines, UTC/AoE and named time zones, progress icons, and desktop widgets.

```sh
brew install --cask kymer0615/tap/countdown-menu-bar
open "/Applications/Countdown Menu Bar.app"
```

Supports Apple Silicon and Intel, on macOS 13 or later. Desktop widgets require macOS 14 or later: launch the app once, right-click the desktop, choose **Edit Widgets**, and find **Countdown Events**.

This release is ad hoc signed, not notarized by Apple. If macOS blocks the first launch, follow [Apple's instructions](https://support.apple.com/en-gb/102445) to allow it in **System Settings → Privacy & Security → Open Anyway**, then open it again.

If you installed a copy manually, quit it and move that app bundle out of Applications before installing with Homebrew. Saved events are stored separately and retained.

## Update or remove

```sh
brew update
brew upgrade --cask kymer0615/tap/countdown-menu-bar
brew uninstall --cask countdown-menu-bar
```

Uninstalling retains saved events and preferences.

## Maintenance

Build and publish a versioned archive using the [app's release instructions](https://github.com/Kymer0615/mac_countdown#publishing-a-release). Update the cask's version and SHA-256 to match the published archive; never replace an existing release archive.

With the tap installed, validate changes using:

```sh
brew style --cask kymer0615/tap/countdown-menu-bar
brew audit --cask kymer0615/tap/countdown-menu-bar
```
