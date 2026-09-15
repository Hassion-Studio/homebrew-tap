cask "nitsend" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "d4d09083066294ac95551b8edd8ba2f6356eeb7342282e2770bab34d191da58d",
         intel: "1366d063acbb70b88c6c3cd5fdf818878e19b9fbb6be45e72c7193ae4c1c170a"

  url "https://github.com/Hassion-Studio/nitsend-releases/releases/download/v#{version}/Nitsend_#{version}_#{arch}.dmg",
      verified: "github.com/Hassion-Studio/nitsend-releases/"
  name "Nitsend"
  desc "Screenshot it, say what's wrong, and your coding agent is on it"
  homepage "https://nitsend.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Nitsend.app"

  zap trash: [
    "~/Library/Application Support/nitsend",
    "~/Library/Caches/studio.hassion.nitsend",
    "~/Library/Preferences/studio.hassion.nitsend.plist",
    "~/Library/WebKit/studio.hassion.nitsend",
  ]
end
