cask "spray-can" do
  version "0.1.3"
  sha256 "fdfe51de8a73c4bd580f495348d84310f0388023f3c6f65cf0ffdf1641585867"

  url "https://github.com/Kymer0615/spray_can/releases/download/v#{version}/SprayCan-#{version}-universal.zip"
  name "Spray Can"
  desc "Keyboard-driven pointer and element navigation"
  homepage "https://github.com/Kymer0615/spray_can"

  depends_on macos: :sonoma

  app "Spray Can.app"

  uninstall quit: "io.github.Kymer0615.SprayCan"

  zap trash: [
    "~/Library/Preferences/io.github.Kymer0615.SprayCan.plist",
    "~/Library/Saved Application State/io.github.Kymer0615.SprayCan.savedState",
  ]

  caveats <<~EOS
    This app is ad hoc signed and is not notarized by Apple.
    If macOS blocks the first launch, allow it in System Settings >
    Privacy & Security > Open Anyway, then open it again.
  EOS
end
