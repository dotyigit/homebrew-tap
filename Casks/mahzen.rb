cask "mahzen" do
  version "2.0.4"
  sha256 "a890caa233889a2c99857d02750fabe589bad98b1df8a4b628a4460378de0453"

  url "https://github.com/dotyigit/mahzen/releases/download/v#{version}/Mahzen_2.0.4_aarch64.dmg"
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
