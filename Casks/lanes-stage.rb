cask "lanes-stage" do
  version "0.48.15"
  sha256 "0a86b9eeb9129eb779feec7fa113419608d2ce1c16ed11630f45e8462037a71a"

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
