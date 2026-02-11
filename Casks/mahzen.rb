cask "mahzen" do
  version "2.0.2"
  sha256 "81603a9b500a73abb6e24757868cd496495be70db7f25a49010790ab3ebd2bd9"

  url "https://github.com/dotyigit/mahzen/releases/download/v#{version}/Mahzen_2.0.2_aarch64.dmg"
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
