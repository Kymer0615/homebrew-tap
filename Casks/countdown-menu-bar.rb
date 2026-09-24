cask "countdown-menu-bar" do
  version "1.2.0"
  sha256 "8821a3e338d6ef7bef0d113bdb1c58efb7c6717d545a19a1c4827748bc3b5b88"

  url "https://github.com/Kymer0615/mac_countdown/releases/download/v#{version}/Countdown-Menu-Bar-#{version}-universal.zip"
  name "Countdown Menu Bar"
  desc "Menu bar countdowns with time zones and desktop widgets"
  homepage "https://github.com/Kymer0615/mac_countdown"

  depends_on macos: :ventura

  app "Countdown Menu Bar.app"

  uninstall quit: "com.local.CountdownMenuBar"

  caveats <<~EOS
    This app is ad hoc signed and is not notarized by Apple.
    If macOS blocks the first launch, allow it in System Settings >
    Privacy & Security > Open Anyway, then open it again.
    Desktop widgets require macOS 14 or later.
  EOS
end
