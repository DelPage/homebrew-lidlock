cask "lidlock" do
  version "1.0.1"
  sha256 "d4e2e1b97ffcf1315f8915a9519ea328dffefde65bd02f3ccd9726aa0ed44c47"

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
