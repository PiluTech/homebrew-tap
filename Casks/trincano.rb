cask "trincano" do
  version "0.12.0"
  sha256 "03743e3bcecf884f23c0f490ce49e75ffbe63a1638057203daf658a043b9248a"

  url "https://github.com/PiluTech/trincano/releases/download/v#{version}/Trincano-#{version}.dmg"
  name "Trincano"
  desc "Menu bar manager for macOS (fork of Ice)"
  homepage "https://pilutech.com.br/apps/trincano"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Trincano.app"

  zap trash: [
    "~/Library/Application Support/br.com.pilutech.trincano",
    "~/Library/Caches/br.com.pilutech.trincano",
    "~/Library/HTTPStorages/br.com.pilutech.trincano",
    "~/Library/Preferences/br.com.pilutech.trincano.plist",
  ]
end
