cask "keyty" do
  version "1.2.0"
  sha256 "992dcda8babb8a1f398d16c28eed5d76eb672d1cd8036a7cb4babc19d45b53df"

  url "https://github.com/keytyapp/Keyty/releases/download/v#{version}/Keyty.dmg",
      verified: "github.com/keytyapp/Keyty/"
  name "Keyty"
  desc "Visualize keyboard and mouse input"
  homepage "https://keyty.app/"

  auto_updates true
  depends_on macos: :big_sur

  app "Keyty.app"
end
