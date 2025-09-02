class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.3.0/gittype-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "3930d3eeba2103d84723fe851315b78ef61a3fdc3c9686aafbf570815130acc5"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.3.0/gittype-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "d8d81fc9d0f4a5fc965566f0046918e3465b82a31966733b167faba01814e452"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.3.0/gittype-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9cfb71bb05dc9d5c566d78db01076e5d30e96074ec7f433e15e8c37a5d731a2"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.3.0/gittype-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1046c4622f61bacc2d061af4aad83d53db52ef331138ad2febdaa7e9c8d336be"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
