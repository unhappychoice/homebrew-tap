class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.3/gittype-v0.10.3-x86_64-apple-darwin.tar.gz"
      sha256 "32f3dadc8c53f1076700a6c48516a1f31b2b1b5ad6dcd482aeca41c15e0333cb"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.3/gittype-v0.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "26204d5bdbe06406d0e6f90992ce413afeb7e61440f322cda4ecca1704cefe27"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.3/gittype-v0.10.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "afb28153eaa8a6b48142d5ecc879aeda784a0e4861d21b29afa5b88170a4b710"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.3/gittype-v0.10.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c4a6f4bd3ab77f69dca70d20ebaf5595ca453a007d08a047b7fdc0a0c92e662"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
