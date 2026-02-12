cask "mahzen" do
  version "2.0.5"
  sha256 "77ef9759b5e8c4173449122c0f16fda8b7b72788d25e801a77dfe710e59c5811"

  url "https://github.com/dotyigit/mahzen/releases/download/v#{version}/Mahzen_2.0.5_aarch64.dmg"
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
