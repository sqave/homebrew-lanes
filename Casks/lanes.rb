cask "lanes" do
  version "0.2.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/sqave/lanes-releases/releases/download/latest/lanes-universal.tar.gz"
  name "Lanes"
  desc "Mission control for AI coding agents"
  homepage "https://github.com/sqave/lanes-releases"

  depends_on macos: ">= :ventura"

  app "Lanes.app"

  zap trash: [
    "~/Library/Application Support/com.lanes.app",
    "~/Library/Caches/com.lanes.app",
    "~/Library/Preferences/com.lanes.app.plist",
  ]
end
