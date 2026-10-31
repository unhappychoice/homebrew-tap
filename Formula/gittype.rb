class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.4/gittype-v0.10.4-x86_64-apple-darwin.tar.gz"
      sha256 "2b5a82f258e5b8691b681c4312a0e5bf0a6ff43de72045f6451f4b88597c71ef"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.4/gittype-v0.10.4-aarch64-apple-darwin.tar.gz"
      sha256 "aeb8471597c4975e1a9cf3a2ab32c9160d3761375dfdf56320ce7e6145a0b8f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.4/gittype-v0.10.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "091ff952c539c1d9c0185e81af83c1608f4b3fe7ca6b17d411c7c06788dd773e"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.4/gittype-v0.10.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f95f3faf23f00f35c6b9c2016a45f7c71bb140cec7e4370e8a8417de0f883b13"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
