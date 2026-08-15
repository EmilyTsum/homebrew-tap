cask "playcover-ptmc" do
  version "0.1.0"
  sha256 "e3580b424923772bce68f11111f0de009632d864b2c8fdf9f43a012b7462e7e7"

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
        App Settings -> Metal Capture
    EOS
  end
end
