class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.2.0/gitlogue-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f7d42caab07f09e76c1c761af94e0139f5581ba2e900a47f0a4311b8f2b4d4f5"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.2.0/gitlogue-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "c005a2db705ad865e8a664dae7b793e4b27c6fe51ce6cb645626adac3e7b41f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.2.0/gitlogue-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67fd769eabe54d19fc4a0067805283378f54017ab68b17427e4c7e2292ab8d78"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.2.0/gitlogue-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "20416861bf0f1501eaec6ad233bc3859a823602d13537e1a3862038d82daa2c1"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
