cask "playcover-ptmc" do
  version "0.1.8"
  sha256 "09b3ebe42eb1d5e07121fbde73cef9ee2f0d406e859a54aac36de42d91e75a1e"

  url "https://github.com/EmilyTsum/PlayCover/releases/download/ptmc-v#{version}/PlayCover-PTMC.dmg"
  name "PlayCover PTMC"
  desc "PlayCover nightly fork with low-overhead pre-compositor Metal HEVC/ProRes capture"
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
