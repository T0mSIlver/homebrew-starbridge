class Starbridge < Formula
  desc "Answer your coding agents' decisions from your phone and watch AI plan quotas"
  homepage "https://github.com/T0mSIlver/starbridge"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.6/starbridge-darwin-arm64"
      sha256 "0e11c78e5be6ef9be1a59104758f8c5ea65a5bab52def92e5f7df37a0404a1e1"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.6/starbridge-darwin-x64"
      sha256 "fcdebfc884ac32e11a0600e053437f20e47054c1b385dae2f4401493bce8447f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.6/starbridge-linux-arm64"
      sha256 "b703415b21ec53ea5fb9fa3dc2800232370c543f7fe408fdf39c035d016d71e2"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.6/starbridge-linux-x64"
      sha256 "ba9f6759062767c38f5d78c0ea594a89b7f3c5956b805eba944c61729e41f9ed"
    end
  end

  # A bare binary download is staged alone, under a name brew picks.
  def install
    bin.install Dir["*"].first => "starbridge"
  end

  def caveats
    "Run starbridge setup to pair this machine."
  end

  test do
    assert_equal "starbridge #{version}", shell_output("#{bin}/starbridge --version").strip
  end
end
