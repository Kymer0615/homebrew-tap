cask "spray-can" do
  version "0.1.4"
  sha256 "694d1ac0867ee21a5503c8dfcecfac63d59943a7570fef6ef1f194e729220550"

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
