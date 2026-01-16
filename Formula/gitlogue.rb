class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.7.0/gitlogue-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "e1e86d3067a2bfd75561f35c16312ad67000f96f0107bda9b18a0400b015563b"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.7.0/gitlogue-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "117a315b2da4c8a53624479cdf1b50bd0216e269dff9c58273b1d34fd1e59a72"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.7.0/gitlogue-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2056664c14ea8b71e25c836a9d9021f0668d611f2d14db5fbb0de238ebf897ed"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.7.0/gitlogue-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a045bd9283cd66edc574cf07074d83e123e09b9b7da9c0610ba86a296fdfbd9"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
