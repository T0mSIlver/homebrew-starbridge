class Starbridge < Formula
  desc "Answer your coding agents' decisions from your phone and watch AI plan quotas"
  homepage "https://github.com/T0mSIlver/starbridge"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.5/starbridge-darwin-arm64"
      sha256 "4fde4dad4b248b542dd4a5365d920cc354420f39af9c8164993fef03c7bffb4b"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.5/starbridge-darwin-x64"
      sha256 "94c0cc0a4e5dfd54cfb90dc9634e2b67c0bce00c04cef75004832683284ad684"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.5/starbridge-linux-arm64"
      sha256 "7c42c1b8f31045ec3dfa20a530f3afeccb98f7d3ec3d674f61be3e5bbb2192c8"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.5/starbridge-linux-x64"
      sha256 "17cdb9d24d8b099f3efd3ea3d70e6a69e8de601296ad46215d4b1fb4379acaa2"
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
