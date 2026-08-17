cask "playcover-ptmc" do
  version "0.1.14"
  sha256 "3e2a4eed70be7f69d952c81a6944e9ada8fbae488ac5106ecf063c23f91d1228"

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

      While an eligible PTMC game is running:
        Option-Command-R        Start/Stop recording
        Shift-Option-Command-R  Stop/finalize only

      PlayCover stays running after its last window closes so the global shortcuts
      and host-side game-audio capture remain available. Quit PlayCover explicitly
      when you are finished.
    EOS
  end
end
