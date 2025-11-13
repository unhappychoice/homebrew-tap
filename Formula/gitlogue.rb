class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.1.0/gitlogue-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "816febcab8c5d6d7bbc854d6845a5b9855cd0ec49626367453012df3f00a0c20"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.1.0/gitlogue-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "2169eb4f509212823674f3e717fb46aa0d6a79110ad0a579d8417053f270e44a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.1.0/gitlogue-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b00de6bf47615dd357afd65ee754989626029ed718376203d5e4069a6e4baf6"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.1.0/gitlogue-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1938fcfd7bd57af64aa8033952140bee7932f11bd90ce6f3b7ecdb0557f8d53f"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
