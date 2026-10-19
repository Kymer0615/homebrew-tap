cask "spray-can" do
  version "0.1.20"
  sha256 "e72f5bb7fa1fbe50c256108b32eb151d855f61cdbf360586b9a25621239ac8db"

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
    This app is signed with the project's own certificate and is not notarized by Apple.
    If macOS blocks the first launch, allow it in System Settings >
    Privacy & Security > Open Anyway, then open it again.
  EOS
end
