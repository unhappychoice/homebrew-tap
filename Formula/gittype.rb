class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.6.1/gittype-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "8c7f3ad9df720bf6c8b60e600a1d3b625d3dbce9bc238e0df567e7c7830c7379"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.6.1/gittype-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "6cbf45e28a4e58d3f780d591c15458dad3061f3d85343afa7f7d5a38e338741a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.6.1/gittype-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f72df2420577402518497f5470c9e17a7cb7c8f640db9e8d960bd697f750327"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.6.1/gittype-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "330cc50d8764a06a3b0dec009579047f80b7fda0cb58b226c7824e1ad72d9806"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
