class Starbridge < Formula
  desc "Answer your coding agents' decisions from your phone and watch AI plan quotas"
  homepage "https://github.com/T0mSIlver/starbridge"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.2/starbridge-darwin-arm64"
      sha256 "c4f146c15384ed3259814b95f4f0369e70e643aec1c885b903879757c8d1b606"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.2/starbridge-darwin-x64"
      sha256 "a7937bec5613b162125f19b56bb18b522fc3e3ca68e1d4f8799a8d68d57d05b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.2/starbridge-linux-arm64"
      sha256 "f5d650e01f8d8c0f745a730b3094576ec0a790be7cac0ed12eb2d1235b8be944"
    end
    on_intel do
      url "https://github.com/T0mSIlver/starbridge/releases/download/v0.1.2/starbridge-linux-x64"
      sha256 "8f98eda2471820cc15b47caf00048ad3ebc6222481c413d0c9bd97992c4e2b65"
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
