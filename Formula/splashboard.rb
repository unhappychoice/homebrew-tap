class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.9.0/splashboard-v2.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "4991a1f5bad1eaf608246072757c5e7a2ec71a236849d9d99b2947bcdef1d2e0"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.9.0/splashboard-v2.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "e4b2f0609d05280ed7b061c0f50208930bfe178c3b0601c26391c8eb0daee8dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.9.0/splashboard-v2.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1fefec8bf69f92a5d38202e38654e3789f9fbad0fc99ffba50b1b13f380f3168"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.9.0/splashboard-v2.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec00b8daeb51be8063647199760d0f00a8d9d13682e17585fff46bf7051ace84"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
