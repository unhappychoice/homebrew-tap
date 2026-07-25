class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.10.0/gitlogue-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "6471fb17b676a1a98e865e82a8c86877e56b9205b8cfacdaf574c36a105a9cab"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.10.0/gitlogue-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "21da5882bf32eb7ecaea07e8b68c40be0a5d82a5daf4d4eb3c996796eaa322c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.10.0/gitlogue-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec868045d237f2cd50f485581b01e4669559d0a8db7c1d8dcfb3d7f13f9ef93d"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.10.0/gitlogue-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25d364e3456798e69d536932d6e56d07b902ca0a93628cfb6ce3217dcc1d035f"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
