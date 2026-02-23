cask "sobottaai" do
  version "0.1.7"
  sha256 "1c484010df93e26f9cfca5514ae57f20fb9358bca6d2fb7e2208a1a1d97e4fcb"

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
