class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.4.1/gitlogue-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "292a8ce21abe52dbff0d45c4d3c45a2187135bbf4d6fe177d1ca3bc68fb3208c"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.4.1/gitlogue-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "a7f4e957be442f77a2a00b1260c856f85e9337a92b91b116c3c4c4b8d1234540"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.4.1/gitlogue-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5f21c9ad96dcbf2b0cd28c557b46d5e7681dffa51fec88e120776acff70f10f"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.4.1/gitlogue-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c225988ca926a8798c331b6b231d53919c1945d8b7ae86bb5eb93f96061427d"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
