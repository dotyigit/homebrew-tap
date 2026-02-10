cask "mahzen" do
  version "1.0.1"
  sha256 "c758f68e8a5cc81014fd3a5c5ffa45187f2cefd8201c936671c4acf3e4305db4"

  url "https://github.com/dotyigit/mahzen/releases/download/v#{version}/Mahzen-#{version}.dmg"
  name "Mahzen"
  desc "Browse, upload, and download files to S3-compatible object storage"
  homepage "https://mahzen.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Mahzen.app"

  zap trash: [
    "~/Library/Application Support/Mahzen",
    "~/Library/Preferences/com.dotyigit.Mahzen.plist",
    "~/Library/Caches/com.dotyigit.Mahzen",
  ]
end
