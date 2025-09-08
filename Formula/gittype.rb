class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.5.1/gittype-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "6657dbf29b7053d1be26b372d2172b0491a1547c63a8b0707cc7784aa545b354"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.5.0/gittype-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "a4e8008539dc01603f9fa9830cdfab98e8136f350d9840da84a8ce3f992158b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.5.1/gittype-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "61cab025386418b118eb5dc94daba63a9d6f169ac2d637aca58c54d96703dea5"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.5.0/gittype-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e7967706ef6b03a0d993b080e6ac0ba6c623402c9a62bd1bc466cd0796874816"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
