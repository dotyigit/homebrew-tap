cask "mahzen" do
  version "1.1.1"
  sha256 "3cf2a39d8b497d6a68d5cc0a69065121d6eb765cdf27e85736bdb489618c0ace"

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
