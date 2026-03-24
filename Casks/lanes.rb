cask "lanes" do
  version "0.12.2"
  sha256 "a17634ce076a51ee70351caecc052fc53639a0475eec803a712f2977ded42582"

  url "https://github.com/lanes-sh/app/releases/download/latest/lanes-universal.tar.gz"
  name "Lanes"
  desc "Mission control for AI coding agents"
  homepage "https://github.com/lanes-sh/app"

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
