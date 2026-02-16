cask "mahzen" do
  version "0.3.0"
  sha256 "e1906be3b628939b9a5464dbb289b2d75a41f5c4cd01dfd163c84b79595deaa7"

  url "https://github.com/dotyigit/mahzen/releases/download/v#{version}/Mahzen_0.3.0_aarch64.dmg"
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
