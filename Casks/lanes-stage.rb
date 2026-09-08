cask "lanes-stage" do
  version "0.48.12"
  sha256 "87de491dbe416f8e29b7d8e6adc6dc83377dcc5bd115c041ae94febf7053bf03"

  url "https://github.com/sqave/lanes-app/releases/download/v#{version}/lanes-stage-universal.tar.gz"
  name "Lanes Stage"
  desc "Mission control for AI coding agents (staging)"
  homepage "https://github.com/sqave/lanes-app"

  depends_on macos: :ventura

  app "Lanes Stage.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Lanes Stage.app"]
  end

  zap trash: [
    "~/.lanes-stage",
    "~/Library/Application Support/com.lanes.stage",
    "~/Library/Caches/com.lanes.stage",
    "~/Library/Preferences/com.lanes.stage.plist",
  ]
end
