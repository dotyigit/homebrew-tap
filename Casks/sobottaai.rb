cask "sobottaai" do
  version "0.1.10"
  sha256 "64375ffbced42dd8612a7820b9650223d9844ca56faef0939333397738a6dbbd"

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
