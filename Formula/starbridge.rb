class Starbridge < Formula
  desc "Answer your coding agents' decisions from your phone and watch AI plan quotas"
  homepage "https://github.com/T0mSIlver/starbridge"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.0/starbridge-darwin-arm64"
      sha256 "4b22e098df94109656d68c95d2bb34efc316d45cb059b8f0950af6288ae15f00"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.0/starbridge-darwin-x64"
      sha256 "1c095a87672c8efff9445c59c46ac333e75cebb33f774d3112ebe8e11a6aef6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.0/starbridge-linux-arm64"
      sha256 "d4efa6a7e60462e81051873bdd2904d0fdc1823adfa57a1972b7fb73cc068fbd"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.0/starbridge-linux-x64"
      sha256 "895961f31895e2789e1c701b70bc7c7bc20a6d836113bf952945d2aca5e02da3"
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
