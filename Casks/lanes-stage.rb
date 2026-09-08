cask "lanes-stage" do
  version "0.48.12"
  sha256 "50ed16caf6b650bc26bb65a975ec063aa3a989a3e6439e7b26f2a0340ba318a1"

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
