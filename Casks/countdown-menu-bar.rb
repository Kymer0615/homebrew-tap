cask "countdown-menu-bar" do
  version "1.3.0"
  sha256 "aa0297f18ee0fa098325f01fa633e1c4071fe013de3187ba256072dadd8b43f4"

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
