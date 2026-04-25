cask "lanes-stage" do
  version "0.34.50"
  sha256 "3a4f653762e64b06c0adc8eddca98b8df5933147bef9595cd4617d03db9662bc"

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
