class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.9.0/gitlogue-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "f0f808de01465b718903ce26eca4aa70db0f9333b930c29aca03e3508ba60ec2"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.9.0/gitlogue-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "a0a0267b5b121ea3a3026c8bf5334b11de4c13c3cc45c2bb796ab481a59150a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.9.0/gitlogue-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5966c810d4fa4fb373155e53c87becec7f347d58abc1b1e3b29e32e18ec61b24"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.9.0/gitlogue-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6179c752b2a141c088f89c45ecb01ea832f29f27b1d605f8fe7e1df672871578"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
