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
      url "https://github.com/unhappychoice/gittype/releases/download/v0.5.1/gittype-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "39295e5f01d1b3a4ced149f3cfc37b351b5c96d0d3d8e7d8714eb564ef2cfee2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.5.1/gittype-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "61cab025386418b118eb5dc94daba63a9d6f169ac2d637aca58c54d96703dea5"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.5.1/gittype-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f473ad3a1a44ef5cb086e0c4ebf966b50099aada7bfa610cb2733a1fd3d8c85b"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
