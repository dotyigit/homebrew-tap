cask "mahzen" do
  version "1.1.3"
  sha256 "999abd2eaefde5ced8bed8d1967fbe76c30d6b324a9f755b729c93d345c914e3"

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
