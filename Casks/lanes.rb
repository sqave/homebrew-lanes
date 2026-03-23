cask "lanes" do
  version "0.5.0"
  sha256 "6a27acf6c6e2d032f2a5df471cff23992af18b7def800bda7a4e5145feef4270"

  url "https://github.com/sqave/lanes/releases/download/latest/lanes-universal.tar.gz"
  name "Lanes"
  desc "Mission control for AI coding agents"
  homepage "https://github.com/sqave/lanes"

  depends_on macos: ">= :ventura"

  app "Lanes.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Lanes.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.lanes.app",
    "~/Library/Caches/com.lanes.app",
    "~/Library/Preferences/com.lanes.app.plist",
  ]
end
