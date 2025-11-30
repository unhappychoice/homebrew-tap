class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.5.0/gitlogue-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "892c153380f9140559182b3bdd8bec289ebe4aa532f0b927a5519440e339bcba"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.5.0/gitlogue-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "1b0866f334dd21d6a8b4d025296aa7082168dc8e9d100ebfccea18d76f456844"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.5.0/gitlogue-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "557f7d4a67e57cd4a2562939f2f01554cd590b13ac2bf7f9782f312d7474e4a7"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.5.0/gitlogue-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71f283620f9552a6df78b2217c56eafc0199aa1de36bdc0a5f2d9c352e026f89"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
