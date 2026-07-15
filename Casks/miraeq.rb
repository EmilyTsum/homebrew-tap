cask "miraeq" do
  version "0.4.0"
  sha256 "b32234f6ef5e9a4ae9f67feac5c146d98fd54bac55374a16ebe73c1e076b84db"

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
