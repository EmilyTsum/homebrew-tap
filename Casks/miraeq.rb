cask "miraeq" do
  version "0.7.0"
  sha256 "e0ae618c41136be343ead21f9bb73db1da1d5d9c1bf4c42612b90fac6c84e40b"

  url "https://github.com/EmilyTsum/MiraEQ/releases/download/v#{version}/MiraEQ-#{version}.dmg"
  name "MiraEQ"
  desc "Custom equalizer app"
  homepage "https://github.com/EmilyTsum/MiraEQ"

  app "MiraEQ.app"

  caveats do
    <<~EOS
      MiraEQ is ad-hoc signed (not notarized).
      If Gatekeeper blocks the first launch, run:
        xattr -cr /Applications/MiraEQ.app
    EOS
  end
end
