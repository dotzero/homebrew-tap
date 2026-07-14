cask "join-now" do
  version "0.4.0"
  sha256 "c1805a05c3738bfb493ae7ed68993b05c890ff24b287f770a0e1b9eddba17aa7"

  url "https://github.com/dotzero/join-now/releases/download/v#{version}/JoinNow-#{version}.dmg"
  name "join-now"
  desc "JoinNow is a free native macOS app that makes upcoming meetings hard to miss"
  homepage "https://github.com/dotzero/join-now"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "JoinNow.app"
  binary "#{appdir}/JoinNow.app/Contents/MacOS/JoinNow", target: "JoinNow"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/JoinNow.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/com.dotzero.JoinNow",
    "~/Library/Preferences/com.dotzero.JoinNow.plist",
    "~/Library/Containers/com.dotzero.JoinNow/Data/Library/Preferences/com.dotzero.JoinNow.plist",
  ]
end
