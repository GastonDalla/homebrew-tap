cask "earmatch" do
  version "0.1.4"
  sha256 "3e0a809444d95e3092f1b5474aa86ee54e24e01dea8b9e89dd80dd504bf2b61b"

  url "https://github.com/GastonDalla/earmatch/releases/download/v#{version}/Earmatch-#{version}.dmg"
  name "Earmatch"
  desc "Practise beatmatching by ear on rekordbox"
  homepage "https://earmatch.gastondalla.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Earmatch.app"

  uninstall quit: "local.earmatch"

  zap trash: [
    "~/Library/Application Support/Earmatch",
    "~/Library/Caches/local.earmatch",
    "~/Library/HTTPStorages/local.earmatch",
    "~/Library/Preferences/local.earmatch.plist",
  ]
end
