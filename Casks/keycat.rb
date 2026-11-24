cask "keycat" do
  version "2.1.1"
  sha256 "96092ed9ae01b9814aa1ccce00cf3e362ed39b878f59740c513187be8d41a49c"

  url "https://github.com/blycr/KeyCat_Slim/releases/download/v#{version}/KeyCat-macOS.zip"
  name "KeyCat"
  desc "Lightweight desktop cat that reacts to your keyboard and mouse"
  homepage "https://github.com/blycr/KeyCat_Slim"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

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
