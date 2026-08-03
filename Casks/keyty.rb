cask "keyty" do
  version "1.1.0"
  sha256 "cac5aefcbefa6d0fa727e01f78d9702060865945593d211651d18d6033c89d1e"

  url "https://github.com/keytyapp/Keyty/releases/download/v#{version}/Keyty.dmg",
      verified: "github.com/keytyapp/Keyty/"
  name "Keyty"
  desc "Visualize keyboard and mouse input"
  homepage "https://keyty.app/"

  auto_updates true
  depends_on macos: :big_sur

  app "Keyty.app"
end
