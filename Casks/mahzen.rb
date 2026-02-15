cask "mahzen" do
  version "0.1.0"
  sha256 "7183836e3a6f936d6ad6beae8e041749ccf5bab8af1a3af7c89d29d2404dc921"

  url "https://github.com/dotyigit/mahzen/releases/download/v#{version}/Mahzen_0.1.0_aarch64.dmg"
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
