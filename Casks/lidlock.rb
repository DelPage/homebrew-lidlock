cask "lidlock" do
  version "1.1.0"
  sha256 "09c2a796d81e1fcb8930dd30f356aca8a41413aadf66277b4f14186071d0c1b7"

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
