cask "lanes" do
  version "0.4.0"
  sha256 "37720bc990711ee7be8639453dab7a9e558746d853f1450f935b3766868858f8"

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
