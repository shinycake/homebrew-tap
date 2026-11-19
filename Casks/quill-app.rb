cask "quill-app" do
  version "2026.1118.6879"
  sha256 "7fe07e12f577cc787300ef34272dc7b46707e510b7a4087eff518ce6adddae26"

  url "https://github.com/shinycake/quill/releases/download/v#{version}/quill-macos-aarch64.zip"
  name "Quill"
  desc "Unofficial Telegram client"
  homepage "https://shinycake.github.io/quill/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Quill.app"
  binary "#{appdir}/Quill.app/Contents/MacOS/quill"

  zap trash: [
    "~/Library/Application Support/org.shinycake.Quill",
    "~/Library/Caches/org.shinycake.Quill",
    "~/Library/Preferences/org.shinycake.quill.plist",
    "~/Library/Saved Application State/org.shinycake.quill.savedState",
  ]
end
