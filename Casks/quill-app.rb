cask "quill-app" do
  version "2026.1127.7073"
  sha256 "5fe82f40b7144c93e8888407be68049817b8f417ed86555d6f39bd0d8abce613"

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
