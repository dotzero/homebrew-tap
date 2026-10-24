cask "join-now" do
  version "0.5.5"
  sha256 "4a15633f36069d1f6e463f78f9f3aa75ddf16fc41ab67463030cab144afde63b"

  url "https://github.com/dotzero/join-now/releases/download/v#{version}/JoinNow-#{version}.dmg"
  name "join-now"
  desc "JoinNow is a free native macOS app that makes upcoming meetings hard to miss"
  homepage "https://github.com/dotzero/join-now"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "JoinNow.app"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "JoinNow.app"], base: :appdir
    end
  end

  zap trash: [
    "~/Library/Application Scripts/com.dotzero.JoinNow",
    "~/Library/Preferences/com.dotzero.JoinNow.plist",
    "~/Library/Containers/com.dotzero.JoinNow/Data/Library/Preferences/com.dotzero.JoinNow.plist",
  ]
end
