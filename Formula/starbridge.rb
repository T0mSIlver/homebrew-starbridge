class Starbridge < Formula
  desc "Answer your coding agents' decisions from your phone and watch AI plan quotas"
  homepage "https://github.com/T0mSIlver/starbridge"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.8/starbridge-darwin-arm64"
      sha256 "797a0ed2ff951cb16a16ef5027d9d7f8359d92c4eac3fd829d94dcb12025bf9f"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.8/starbridge-darwin-x64"
      sha256 "931d1f469e43db4a96579eee1d32396a69cbf7ee6018c69c2d8fb2e5346855cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.8/starbridge-linux-arm64"
      sha256 "fdc7ad3cd1aaa047728364588c3ab1113bd3d2a41f16f0bbd67736de8800c828"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.8/starbridge-linux-x64"
      sha256 "e36994564930393ac45e8b94a48b90914a69d200a7e22066f0e67b9852070f41"
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
