class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.6.2/gittype-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "065f1eb4227406bd5febcd33aed941b5adf04d604f52cf88b34d027357b7c0bf"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.6.2/gittype-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "0f85295ea88eece03898fff58cf998c39d2ad24e928a6b94f71ef9304b33b01c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.6.2/gittype-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87a04fb260f9f7493bcdabc772997f2bf571b3d86e6db0d92a1606c8befa4a41"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.6.2/gittype-v0.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "62be915a6a91fb1d061781d6aa103473ffc675aec2d00fd869e60a315404581c"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
