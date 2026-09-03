cask "keyty" do
  version "1.5.0"
  sha256 "aa81d54ed954b1ae0f955cf99bab058fdd3cd32100851d82ffed48e39c0995be"

  url "https://github.com/keytyapp/Keyty/releases/download/v#{version}/Keyty.dmg",
      verified: "github.com/keytyapp/Keyty/"
  name "Keyty"
  desc "Visualize keyboard and mouse input"
  homepage "https://keyty.app/"

  auto_updates true
  depends_on macos: :big_sur

  app "Keyty.app"
end
