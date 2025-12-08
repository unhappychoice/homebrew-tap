class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.6.0/gitlogue-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "c254d27590413a8456265a1b5c123ee68cc8ab2f31e051295f260e2906e6f81f"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.6.0/gitlogue-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "2438493a3dc3e43f5df7adadd795033bc6f0192dcb801dfb6486be40a0222372"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.6.0/gitlogue-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "800ea2cd9a33dbdbea83545b4e941255b1929d36601a00be22bab057d46509f0"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.6.0/gitlogue-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2a89662fdcfb36b29ced22ed1cc98c60d9ed4bdb98ee65775e50b5836fdd905"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
