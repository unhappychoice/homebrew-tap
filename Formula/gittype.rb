class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.5/gittype-v0.10.5-x86_64-apple-darwin.tar.gz"
      sha256 "bd3b789b44aeb9789a8a317be3b698498531c2e26e726673e85f7d93e2f515cd"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.5/gittype-v0.10.5-aarch64-apple-darwin.tar.gz"
      sha256 "4c87b6206ff3db3aa8c3130a214145f789e9325dfa5534e9e4037253d84e85ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.5/gittype-v0.10.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b96a20bef9e5bc1b1cf22d15cb76a4f45efc120cb44f39ec56b1170149f2631c"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.5/gittype-v0.10.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "99bae9803a5b697234a681eca127ee41c624fc84539faf30fb1a2fe38082d5a7"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
