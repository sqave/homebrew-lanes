cask "lanes-stage" do
  version "0.34.1"
  sha256 "6217e05e8a03f97b178f0992d9a0022d3e4949485f9b58833f15ad0a9261e6db"

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
