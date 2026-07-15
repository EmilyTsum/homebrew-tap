cask "miraeq" do
  version "0.3.0"
  sha256 "914b6886d269a0d74caa1cb96bc6a546a45485a5e981a75c7ef796235d4682bd"

  url "https://github.com/EmilyTsum/MiraEQ/releases/download/v#{version}/MiraEQ-#{version}.dmg"
  name "MiraEQ"
  desc "Custom equalizer app"
  homepage "https://github.com/EmilyTsum/MiraEQ"

  app "MiraEQ.app"

  caveats do
    <<~EOS
      MiraEQ is signed with a free Apple Developer account (not notarized).
      If Gatekeeper blocks the first launch, run:
        xattr -cr /Applications/MiraEQ.app
    EOS
  end
end
