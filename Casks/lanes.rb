cask "lanes" do
  version "0.2.1"
  sha256 "4113cab2306a22424b90ba9f3df9bebababe7cb5d33d6d5908a00fe0417c1ba8"

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
