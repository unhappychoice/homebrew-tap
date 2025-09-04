class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.4.1/gittype-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "a45b4727a515c8f66c564b187f00ca911ee6a500432251d32b592e5de7513359"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.3.0/gittype-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "d8d81fc9d0f4a5fc965566f0046918e3465b82a31966733b167faba01814e452"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.4.1/gittype-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a07dc11f9c7bc1eb1f8bc7bef595eb55ceebd452ffdec85502f1b140ae9bca0"
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
