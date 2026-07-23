cask "join-now" do
  version "0.5.1"
  sha256 "9dd3293e5a910fdccc3a442b7ca00e78d7792f7f440f333ef085e4cfca46d5a4"

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
