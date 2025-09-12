class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.6.0/gittype-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "fa5425a893f304c570286f2702ea393d0d27a133d6e2a8f52ac80b1a85cd0f21"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.6.0/gittype-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "8bc8e79c13266eee7edcc8ebac6fa5f9abda7b31615316e9b334f419e410aad8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.6.0/gittype-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "696018c8a00fe0d50bf5a91fe2cfa3abd891d45ce79e533999dd3815c9b50d52"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.6.0/gittype-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8aefb9e88b16aa07b86195e0f8d6eca47c9104e424b78576d8ac574026e0a7a1"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
