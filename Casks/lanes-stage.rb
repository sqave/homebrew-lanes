cask "lanes-stage" do
  version "0.40.0"
  sha256 "51d7fb02c8fd5104c7ed1e0b0d0b4948277ed245a5b4ec29d582dc548974df50"

  url "https://github.com/sqave/lanes-app/releases/download/v#{version}/lanes-stage-universal.tar.gz"
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
