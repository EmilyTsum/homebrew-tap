cask "miraeq" do
  version "0.6.0"
  sha256 "3e3ddd47f921d2c4bea166b24dc8de00547ef8b72222d6280d8664773d1a964e"

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
