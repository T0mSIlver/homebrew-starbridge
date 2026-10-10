class Starbridge < Formula
  desc "Answer your coding agents' decisions from your phone and watch AI plan quotas"
  homepage "https://github.com/T0mSIlver/starbridge"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.3/starbridge-darwin-arm64"
      sha256 "479b36491592d07541db99700ac5eaea8a943c7715ad0d2abf0f8ac4e983542a"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.3/starbridge-darwin-x64"
      sha256 "95c00269aa8fa47c9f2202ea3feebdec34ad252da7249a2cb8349f894b34ebbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.3/starbridge-linux-arm64"
      sha256 "652e7cb24b7d8219a14665ff025a0a33982cb30aa617abcd2c67701405cbaf3a"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.3/starbridge-linux-x64"
      sha256 "3e26a7c86f67094610d3584b51d49ca6197a81c3f41b355c6a1ed17e3a86e497"
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
