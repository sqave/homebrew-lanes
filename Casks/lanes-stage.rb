cask "lanes-stage" do
  version "0.40.6"
  sha256 "10eb6eee848a402c0fb66cdd186b18de860cff81f3fb6d1a91ee42c545dcf27c"

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
