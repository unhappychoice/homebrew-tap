class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.0.5/gitlogue-v0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "786b867b871fa262205910568639b06f688c4cf986600e5f5a5f7bf60984970c"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.0.5/gitlogue-v0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "40ca92729ddd20e25bde58b5631ecbabd2e06f2c605ae587341cd42e11e8f2b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.0.5/gitlogue-v0.0.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "181fb67c0aa0e52a28d6ece6873dc8802ab5edef099cce11c26c860004965b06"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.0.5/gitlogue-v0.0.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5803e66290e79cd5afc1a4260c4cc9f648f3a687850daf2dde1bdd38664fb3bb"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
