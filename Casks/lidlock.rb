cask "lidlock" do
  version "1.1.1"
  sha256 "fd4332c3b90b3924fe1a7fba31cde00881edbff7f6e1ddff8e96ec29dd2ce201"

  url "https://github.com/DelPage/lidlock/releases/download/v#{version}/LidLock.dmg",
      verified: "github.com/DelPage/lidlock/"
  name "LidLock"
  desc "Keep your MacBook running with the lid closed"
  homepage "https://delpageinc.com/lidlock"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "LidLock.app"

  zap trash: [
    "~/Library/Preferences/com.lidlock.app.plist",
    "~/Library/Saved Application State/com.lidlock.app.savedState",
  ]
end
