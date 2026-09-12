class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.1/splashboard-v2.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "d8efd82f97246ee682e3298e713cf0af89f277c06fb7ae75e3b134e5b1d217d6"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.1/splashboard-v2.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "8d1ab297414a924a4bf48321e3252b254911162f4ebc6f52f64a251c4134345e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.1/splashboard-v2.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d00fcf7c74e0f12f453eab5702e5d91957ed081154a5dc489bec9036e661bec7"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.1/splashboard-v2.10.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c56dac4ac01c714c2af4ddb5ccaf65d38c1dfa3196a87a31ca1ddb6d8031e31"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
