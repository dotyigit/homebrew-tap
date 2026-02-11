cask "mahzen" do
  version "2.0.0"
  sha256 "55f9b2beac91cb69618c8324fb217bdea252c571a5412f82d2f92b7e7901e313"

  url "https://github.com/dotyigit/mahzen/releases/download/v#{version}/Mahzen_2.0.0_aarch64.dmg"
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
    "~/Library/Application Support/dev.mahzen",
    "~/Library/Preferences/dev.mahzen.plist",
    "~/Library/Caches/dev.mahzen",
  ]
end
