cask "lanes-stage" do
  version "0.34.47"
  sha256 "cda17adc00d155732ac16f3cb55661a9950778987307d03d45dd7f9c53378aaf"

  url "https://github.com/sqave/lanes-app/releases/download/latest/lanes-stage-universal.tar.gz"
  name "Lanes Stage"
  desc "Mission control for AI coding agents (staging)"
  homepage "https://github.com/sqave/lanes-app"

  depends_on macos: ">= :ventura"

  app "Lanes Stage.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Lanes Stage.app"]
  end

  zap trash: [
    "~/.lanes-stage",
    "~/Library/Application Support/com.lanes.stage",
    "~/Library/Caches/com.lanes.stage",
    "~/Library/Preferences/com.lanes.stage.plist",
  ]
end
