class Doctrine < Formula
  desc "Teach your coding agent how you build software"
  homepage "https://doctrine.codedynamic.com"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/disrupt-ed/doctrine-cli/releases/download/v0.1.0/doctrine_0.1.0_darwin_arm64.tar.gz"
      sha256 "25e341a50745e4efea4930f9a7ec64b169400b642f7183430b2fe8c6318aaf7a"
    end
    on_intel do
      url "https://github.com/disrupt-ed/doctrine-cli/releases/download/v0.1.0/doctrine_0.1.0_darwin_amd64.tar.gz"
      sha256 "0f3b185acd1e9f2c6ea097039d11baa0762b901e1344b88904cdf52c551d1c03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/disrupt-ed/doctrine-cli/releases/download/v0.1.0/doctrine_0.1.0_linux_arm64.tar.gz"
      sha256 "13ee71ce16759c10d2824052f82909cfb187286d119249d70ec89eae19435102"
    end
    on_intel do
      url "https://github.com/disrupt-ed/doctrine-cli/releases/download/v0.1.0/doctrine_0.1.0_linux_amd64.tar.gz"
      sha256 "c0f164f4dfff579db80a50563097ef1d0e4b092f16e212ace2552e11d97060a9"
    end
  end

  def install
    bin.install "doctrine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doctrine version")
  end
end
