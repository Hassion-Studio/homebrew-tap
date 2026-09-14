cask "nitsend" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "c475befc74a03e6b9169c3141da810545651aee8f3a2807b5e4a5cab8bbb1902",
         intel: "51d658c8f30fa9c80d6c61a0e1bfc6eb6902f99a655e91a7464dbf3d458d56a3"

  url "https://github.com/Hassion-Studio/nitsend-releases/releases/download/v#{version}/Nitsend_#{version}_#{arch}.dmg",
      verified: "github.com/Hassion-Studio/nitsend-releases/"
  name "Nitsend"
  desc "Screenshot it, say what's wrong, and your coding agent is on it"
  homepage "https://nitsend.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Nitsend.app"

  zap trash: [
    "~/Library/Application Support/nitsend",
    "~/Library/Caches/studio.hassion.nitsend",
    "~/Library/Preferences/studio.hassion.nitsend.plist",
    "~/Library/WebKit/studio.hassion.nitsend",
  ]
end
