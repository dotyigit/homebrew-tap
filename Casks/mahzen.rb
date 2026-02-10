cask "mahzen" do
  version "1.1.0"
  sha256 "ae180c39bb2ad56c7c383a93d76aa3bb870066fd85123c910810d3938fe6bc3c"

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
