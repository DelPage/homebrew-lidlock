cask "lidlock" do
  version "1.0.0"
  sha256 "1bd59b93a726cca08aff3bf222fb70d9e88d5c680ff474e07e20714f23923799"

  url "https://github.com/imwalkinhere/lidlock/releases/download/v#{version}/LidLock.dmg",
      verified: "github.com/imwalkinhere/lidlock/"
  name "LidLock"
  desc "Keep your MacBook running with the lid closed"
  homepage "https://delpageinc.com/lidlock"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "LidLock.app"

  zap trash: [
    "~/Library/Preferences/com.lidlock.app.plist",
    "~/Library/Saved Application State/com.lidlock.app.savedState",
  ]
end
