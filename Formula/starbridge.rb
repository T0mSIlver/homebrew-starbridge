class Starbridge < Formula
  desc "Answer your coding agents' decisions from your phone and watch AI plan quotas"
  homepage "https://github.com/T0mSIlver/starbridge"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.1/starbridge-darwin-arm64"
      sha256 "b844a50c7a6506d3ac8dd1fbcdfdf0bc14b66146bb65d5f6b4ad32165bc98d30"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.1/starbridge-darwin-x64"
      sha256 "193bf39e734fd7fd3edc402d0baf506ff294dd419f15432943f1a86b8438f1e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.1/starbridge-linux-arm64"
      sha256 "6c1046b702e682dac2bfefcd03f956c13d9f9debc284fd82e0e7676224365628"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.1/starbridge-linux-x64"
      sha256 "b5d597134f04e5fbc1b5505f20681003b09b9b2632d413b28e0dff92d0e5bac2"
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
