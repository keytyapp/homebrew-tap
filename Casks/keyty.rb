cask "keyty" do
  version "1.7.0"
  sha256 "437acdd76ab6ba8e4ae9d5bfd2de0194342250f2c4446522c36d4c4b0b121b40"

  url "https://github.com/keytyapp/Keyty/releases/download/v#{version}/Keyty.dmg"
  name "Keyty"
  desc "Visualize keyboard and mouse input"
  homepage "https://keyty.app/"

  auto_updates true
  depends_on macos: :big_sur

  app "Keyty.app"
end
