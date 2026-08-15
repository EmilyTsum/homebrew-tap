cask "playcover-ptmc" do
  version "0.1.2"
  sha256 "5e0fb3b09e43001d588f00ef28e45ab48e9c2725a1c4d10305e459e5fa809d04"

  url "https://github.com/EmilyTsum/PlayCover/releases/download/ptmc-v#{version}/PlayCover-PTMC.dmg"
  name "PlayCover PTMC"
  desc "PlayCover nightly fork with pre-compositor Metal HEVC capture"
  homepage "https://github.com/EmilyTsum/PlayCover"

  depends_on arch: :arm64

  app "PlayCover.app"

  caveats do
    <<~EOS
      PlayCover PTMC is ad-hoc signed and is not notarized.
      If Gatekeeper blocks the first launch, run:
        xattr -cr /Applications/PlayCover.app

      Configure capture per game from:
        App Settings -> Capture
    EOS
  end
end
