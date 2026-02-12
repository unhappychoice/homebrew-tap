class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.9.0/gittype-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "b5c6863b4e62a20968f53368111d5865d1b9900109d87d940a91110cee380efa"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.9.0/gittype-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "f68f37390caa44e7820556c441bc11e144092c3ed1aab809406a7f8a8f9003b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.9.0/gittype-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52c79762aa84b09fc50a76a1fdf749cac278a6dc8af5d56fc2c2853f0d9532b3"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.9.0/gittype-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a26361973a3bf246b5fc24326822b45d74c248c7a5f8b74c86a3559777b09649"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
