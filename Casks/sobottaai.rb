cask "sobottaai" do
  version "0.1.6"
  sha256 "4be8c55a1905729351dd7e91f06d930094dfd05fa18012c80f4d272dcaa12d91"

  url "https://github.com/dotyigit/sobottaai/releases/download/v#{version}/SobottaAI_#{version}_aarch64.dmg"
  name "SobottaAI"
  desc "Open-source cross-platform voice-to-text with local AI"
  homepage "https://github.com/dotyigit/sobottaai"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "SobottaAI.app"

  zap trash: [
    "~/Library/Application Support/ai.sobotta.app",
    "~/Library/Preferences/ai.sobotta.app.plist",
    "~/Library/Caches/ai.sobotta.app",
  ]
end
