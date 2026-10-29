cask "ghbdtn" do
  version "1.1"
  sha256 "6f846d0dc7ddd8a5836d0d8b14452968b36c4fe440dafdb4ffd7353551d34c6c"

  url "https://github.com/achubnet/Ghbdtn/releases/download/v#{version}/Ghbdtn-#{version}.dmg"
  name "Ghbdtn"
  desc "Fix text typed in the wrong keyboard layout between English and Russian"
  homepage "https://github.com/achubnet/Ghbdtn"

  depends_on macos: :ventura

  app "Ghbdtn.app"

  uninstall quit: "com.skriptoff.Ghbdtn"

  zap trash: "~/Library/Preferences/com.skriptoff.Ghbdtn.plist"

  caveats <<~EOS
    Ghbdtn is not notarized yet, so macOS blocks it on first launch:
    open it once, then System Settings → Privacy & Security → Open Anyway.
    Then allow Ghbdtn in Privacy & Security → Accessibility.
  EOS
end
