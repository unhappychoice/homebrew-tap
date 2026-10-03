class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.12.0/gitlogue-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "e205abbe73a18fea5cdc6b2c01c91c2e293ded65d75a582e20ce133424c596be"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.12.0/gitlogue-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "bb8c068d9440130dcc612bddc5f6f35454ceddf1c190db89922442e75e834e71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.12.0/gitlogue-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7da67cf99d5304b58242bb641d3b80ce7a7535ac80991db18e0805742c39bbec"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.12.0/gitlogue-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6674f9af4ed8477809bda07a1088e210f6c2cd6391cbfaf0e0fdca009c9817a2"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
