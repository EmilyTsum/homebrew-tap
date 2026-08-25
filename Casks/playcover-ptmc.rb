cask "playcover-ptmc" do
  version "0.1.15"
  sha256 "27c106227c3e43537b6d322bbd4049fc4a0c2156f0a8d6ba0208865db6a722da"

  url "https://github.com/EmilyTsum/PlayCover/releases/download/ptmc-v#{version}/PlayCover-PTMC.dmg"
  name "PlayCover PTMC"
  desc "PlayCover fork with low-overhead pre-compositor Metal HEVC/ProRes capture"
  homepage "https://github.com/EmilyTsum/PlayCover"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "PlayCover.app"

  caveats do
    <<~EOS
      PlayCover PTMC is ad-hoc signed and is not notarized.
      If Gatekeeper blocks the first launch, run:
        xattr -cr /Applications/PlayCover.app

      Configure capture per game from:
        App Settings -> Capture

      While an eligible PTMC game is running:
        Option-Command-R        Start/Stop recording
        Shift-Option-Command-R  Stop/finalize only

      PlayCover stays running after its last window closes so the global shortcuts
      and host-side game-audio capture remain available. Quit PlayCover explicitly
      when you are finished.
    EOS
  end
end
