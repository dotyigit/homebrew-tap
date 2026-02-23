cask "sobottaai" do
  version "0.1.4"
  sha256 "f905404b4f837ad74e74cac8edd99b27037867d6a179754ad0a6c93672caf50f"

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
