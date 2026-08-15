cask "keyty" do
  version "1.3.0"
  sha256 "c2c1b046dfdf5789f91bbdf360b6c8f899e7bea0a45bb124e5d36359ef12f592"

  url "https://github.com/keytyapp/Keyty/releases/download/v#{version}/Keyty.dmg",
      verified: "github.com/keytyapp/Keyty/"
  name "Keyty"
  desc "Visualize keyboard and mouse input"
  homepage "https://keyty.app/"

  auto_updates true
  depends_on macos: :big_sur

  app "Keyty.app"
end
