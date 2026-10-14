class Starbridge < Formula
  desc "Answer your coding agents' decisions from your phone and watch AI plan quotas"
  homepage "https://github.com/T0mSIlver/starbridge"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.7/starbridge-darwin-arm64"
      sha256 "cb3aaad29030d037de99ef372bc9dc85298be93b1ded6c7db685312308232892"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.7/starbridge-darwin-x64"
      sha256 "3c886fb51f4b21c0d759d69d814c99b2e7450ec16f4289ad27abbe437cb873c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.7/starbridge-linux-arm64"
      sha256 "b99d28c9bd8d7e7a329665963714e05ea03a4c0bdbd0831fd8a5a6b3fb9e714b"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.7/starbridge-linux-x64"
      sha256 "8b5d951eb915239e44650a43ed7abac6035b50fc944f61b37101abd816d5232d"
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
