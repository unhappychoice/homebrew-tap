class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.3.0/gitlogue-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "0c4a0dfe674f578ce10228810b45971e79ccfcd44ed560faf1dd5f8c291c9bae"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.3.0/gitlogue-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b03761d9e3034d5a745196ba5c6762ffc8b5ebb58f35ed5aab1680644f025b2c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.3.0/gitlogue-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a1975396898b36844c18a5e33dc093622cfa7efdd9bdf6baf04af2018fadd25"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.3.0/gitlogue-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fab16a7646545203c3c79c0599df560ef0a0f3c449df2c03061c2671aa25b80b"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
