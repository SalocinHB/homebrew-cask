cask "simplebanking" do
  version "1.6.1"
  sha256 :no_check

  url "https://www.simplebanking.de/assets/simplebanking.dmg"
  name "simplebanking"
  desc "Shows your bank balance in the menu bar"
  homepage "https://www.simplebanking.de/"

  livecheck do
    url "https://raw.githubusercontent.com/klotzbrocken/simplebanking/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "simplebanking.app"

  zap trash: [
    "~/Library/Application Support/simplebanking",
    "~/Library/Caches/tech.yaxi.simplebanking",
    "~/Library/HTTPStorages/tech.yaxi.simplebanking",
    "~/Library/Preferences/tech.yaxi.simplebanking.plist",
    "~/Library/Saved Application State/tech.yaxi.simplebanking.savedState",
  ]
end
