cask "countdown-menu-bar" do
  version "1.3.1"
  sha256 "d9a37ac16cb8d51e86b785a8d69bb16d55ca60855512400e9c36a2ac6639e761"

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
