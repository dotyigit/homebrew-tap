cask "sobottaai" do
  version "0.1.1"
  sha256 "7453cd6e536f1aff715e21f37ae9a96691b7cdeafebf5c51b48f455ddb8a8db8"

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
