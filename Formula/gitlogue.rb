class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.8.0/gitlogue-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "d37ddf3f65df27c1e4ebbb518a3b884ad1039661fe79c8cde32dce3b0ae099d9"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.8.0/gitlogue-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "5bad3fd6a981517354b1d54990435e751cb7b72d480f71abefc7e03a13da06fa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.8.0/gitlogue-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cfb3c43e55656fd69b73dd84f9e0ec647dd835a40163241ec589a5d4fc05482b"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.8.0/gitlogue-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4941e749f63f4518bca5b7c524a934f51ec63a3bc7cfe506dacd8c7c5ff0ac0"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
