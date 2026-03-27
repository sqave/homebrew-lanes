cask "lanes" do
  version "0.23.3"
  sha256 "f2ad4fb47726df39b21bf5394e46a35a1b6ff82b4f52fdc76c3c7285666c0cc2"

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
