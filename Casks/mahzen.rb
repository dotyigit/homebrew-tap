cask "mahzen" do
  version "0.2.2"
  sha256 "52214542cbb43103c45d10dc5c12010fc367053b6a7bfa56553f5df6f92424a6"

  url "https://github.com/dotyigit/mahzen/releases/download/v#{version}/Mahzen_0.2.2_aarch64.dmg"
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
