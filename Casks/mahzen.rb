cask "mahzen" do
  version "2.0.7"
  sha256 "599160aa81d75f18ed66fd55b514bec21828a148abad2cbd91f0842ab6840ab7"

  url "https://github.com/dotyigit/mahzen/releases/download/v#{version}/Mahzen_2.0.7_aarch64.dmg"
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
