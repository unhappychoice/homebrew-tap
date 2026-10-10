class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.2/splashboard-v2.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "d6bc4db616ab40a4dcf177bc232655aa131b81600c2adfcf58417345d888867b"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.2/splashboard-v2.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "0bbb8ac1473dd64e1f7cd6d61a21bd1708a1021e24427ddc9335326e63c1bc13"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.2/splashboard-v2.10.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7cebc7fbf19d49b535e0ab7e06376b8b33874cbb8881371584fc7923a25c14f5"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.2/splashboard-v2.10.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8549c68c56829bca2789fe2df0ca9674089cf17791ff8ebd5526e91cf01444f3"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
