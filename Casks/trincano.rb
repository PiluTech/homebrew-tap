cask "trincano" do
  version "0.13.0"
  sha256 "fce257a6d0435d22caec6aaac5b812b61f2ed9238cdd8448fc64220659bf5eaa"

  url "https://github.com/PiluTech/trincano/releases/download/v#{version}/Trincano-#{version}.dmg"
  name "Trincano"
  desc "Menu bar manager (fork of Ice)"
  homepage "https://pilutech.com.br/apps/trincano"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  auto_updates true

  app "Trincano.app"

  zap trash: [
    "~/Library/Application Support/br.com.pilutech.trincano",
    "~/Library/Caches/br.com.pilutech.trincano",
    "~/Library/HTTPStorages/br.com.pilutech.trincano",
    "~/Library/Preferences/br.com.pilutech.trincano.plist",
  ]
end
