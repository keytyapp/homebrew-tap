cask "keyty" do
  version "1.6.0"
  sha256 "a8c65272cccc731f9799c4fa5b9f8dd078dde56fcfe48888d59de30394720d1b"

  url "https://github.com/keytyapp/Keyty/releases/download/v#{version}/Keyty.dmg",
      verified: "github.com/keytyapp/Keyty/"
  name "Keyty"
  desc "Visualize keyboard and mouse input"
  homepage "https://keyty.app/"

  auto_updates true
  depends_on macos: :big_sur

  app "Keyty.app"
end
