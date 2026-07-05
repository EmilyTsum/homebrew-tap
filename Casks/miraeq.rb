cask "miraeq" do
  version "0.1.0"
  sha256 "adf965cac2028d45cb9bd106d52e44070ad720cfb3499467a654f26d5d615079"

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
