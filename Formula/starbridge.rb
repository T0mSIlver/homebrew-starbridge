class Starbridge < Formula
  desc "Answer your coding agents' decisions from your phone and watch AI plan quotas"
  homepage "https://github.com/T0mSIlver/starbridge"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.4/starbridge-darwin-arm64"
      sha256 "b2611cd00561d6bf61a35a1765b72b84335e3f079961082506439cc454845472"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.4/starbridge-darwin-x64"
      sha256 "1eeefb274f32b88d33d30540aefe90638e66d4351998e44d24a6ec9822a4866b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.4/starbridge-linux-arm64"
      sha256 "eeec4ebde751673b59d49b78a8a70801182ce85b9898d7d19811356ce3a1b7a8"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.4/starbridge-linux-x64"
      sha256 "603554a91b21079f2a53378b97728828177af59c23da371beccf3a0d1ad633ce"
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
