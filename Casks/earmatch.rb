cask "earmatch" do
  version "0.1.3"
  sha256 "7f6f7384b1af136caa90f9cc4aa177e048b96b0227765fd9a105cd9ebc80233d"

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
