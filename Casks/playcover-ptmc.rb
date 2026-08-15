cask "playcover-ptmc" do
  version "0.1.7"
  sha256 "51bedf0620973cce84a0e9e4de38f00ad0f542122047173aa9d604d0e4d15bfb"

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
