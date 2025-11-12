class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.0.4/gitlogue-v0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "dace831ef54063296640ea05a4d6f233343c56a16bfc04b3bfd7771cd35953fe"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.0.4/gitlogue-v0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "be36eb566d19664b4d4f294c2aea78473309e35f9ccad925f1087895b3c35e0f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.0.4/gitlogue-v0.0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c03f3dd5c33164cd2bfcf0f52247115e2896d7e62ce3c1a9613e3f82191beeca"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.0.4/gitlogue-v0.0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a156e0c19b252004d360278b3cb09adbee7ef555c195aa32f7ceb8d4e3ad011a"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
