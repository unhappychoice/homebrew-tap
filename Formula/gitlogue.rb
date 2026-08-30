class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.11.0/gitlogue-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "89f0af647796599653231e10b8474a56076d123fe7c5940f0d0a22f9a7cb8f7b"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.11.0/gitlogue-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "6a3a0c6c5953138cb3c91d821964cb63018f16d3edc9d07003906cfe4be80bd5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.11.0/gitlogue-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff58adcdbbd5474d5bcabe8194313574aab967a60bfc1757070ba025ff9379c4"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.11.0/gitlogue-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f3810486d771d7e61e185cee69e10af55e53538f25ab0ebd4b515809ef39a70"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
