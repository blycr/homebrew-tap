cask "keycat" do
  version "2.0.0"
  sha256 "ede51cdce98a7e3b968004d8b6b896ad2bcae64420910f197a131be62e5d8797"

  url "https://github.com/blycr/KeyCat_Slim/releases/download/v#{version}/KeyCat-macOS.zip"
  name "KeyCat"
  desc "Lightweight desktop cat that reacts to your keyboard and mouse"
  homepage "https://github.com/blycr/KeyCat_Slim"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "KeyCat.app"

  zap trash: [
    "~/Library/Application Support/KeyCat",
    "~/Library/Preferences/com.local.keycat.plist",
  ]

  caveats <<~EOS
    First launch requires Input Monitoring permission:
      System Settings -> Privacy & Security -> Input Monitoring -> enable KeyCat

    Because this open-source app is not Apple-notarized, install with:
      brew install --cask --no-quarantine blycr/tap/keycat
    Or clear quarantine manually if macOS reports the app as damaged:
      xattr -dr com.apple.quarantine /Applications/KeyCat.app
  EOS
end
