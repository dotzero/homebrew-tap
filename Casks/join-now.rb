cask "join-now" do
  version "0.5.4"
  sha256 "ce17dd57989ef18143cbdff523a4a95b48b2f3ae7dd4cc94d2a8c1d35f5f1d6e"

  url "https://github.com/dotzero/join-now/releases/download/v#{version}/JoinNow-#{version}.dmg"
  name "join-now"
  desc "JoinNow is a free native macOS app that makes upcoming meetings hard to miss"
  homepage "https://github.com/dotzero/join-now"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "JoinNow.app"
  binary "#{appdir}/JoinNow.app/Contents/MacOS/JoinNow", target: "JoinNow"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{ .AppDir }}/JoinNow.app"]
    end
  end

  zap trash: [
    "~/Library/Application Scripts/com.dotzero.JoinNow",
    "~/Library/Preferences/com.dotzero.JoinNow.plist",
    "~/Library/Containers/com.dotzero.JoinNow/Data/Library/Preferences/com.dotzero.JoinNow.plist",
  ]
end
