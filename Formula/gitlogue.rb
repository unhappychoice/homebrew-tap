class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.12.2/gitlogue-v0.12.2-x86_64-apple-darwin.tar.gz"
      sha256 "603ca56d612aab96638efb5d50800450c07e8ae2ae6aafae366c5c19ea042376"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.12.2/gitlogue-v0.12.2-aarch64-apple-darwin.tar.gz"
      sha256 "b73118f9417f90cff296a9fcb43cdb5c34e9b342bea8bab1fdc15b44c366f7b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.12.2/gitlogue-v0.12.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9953fa76141ae02be9c57d788b7a55a8e97fd7e92f74cfe896d2851987f9a08"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.12.2/gitlogue-v0.12.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9b167db703dc43e0fa7d809aaef183f13ebc583b05ad1b5cd238aa3d2acd799"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
