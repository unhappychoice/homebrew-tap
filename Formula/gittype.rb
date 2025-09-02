class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.2.0/gittype-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "a1b2c3d4e5f6789012345678901234567890123456789012345678901234567890" # This will be updated automatically
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.2.0/gittype-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "b1c2d3e4f5g6789012345678901234567890123456789012345678901234567890" # This will be updated automatically
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.2.0/gittype-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1d2e3f4g5h6789012345678901234567890123456789012345678901234567890" # This will be updated automatically
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.2.0/gittype-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d1e2f3g4h5i6789012345678901234567890123456789012345678901234567890" # This will be updated automatically
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end