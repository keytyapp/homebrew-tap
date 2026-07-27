cask "keyty" do
  version "1.0.0"
  sha256 "a1c8c7dfc6c4d6235c09eb19fc90a8047bf87a11f45d628a308884cd6577b906"

  url "https://github.com/keytyapp/Keyty/releases/download/v#{version}/Keyty.dmg",
      verified: "github.com/keytyapp/Keyty/"
  name "Keyty"
  desc "Visualize keyboard and mouse input"
  homepage "https://keyty.app/"

  auto_updates true
  depends_on macos: :big_sur

  app "Keyty.app"
end
