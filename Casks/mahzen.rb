cask "mahzen" do
  version "1.0.3"
  sha256 "64645683ee8defac4c8e8a025084a63512564ad081316eb849bc2488e2c414eb"

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
