class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.2/gittype-v0.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "e84eac4054a067dabf95b1e5b583d725cc501b9dfb8afdf7fd11c7a867965840"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.2/gittype-v0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "e33c1f413053670a340b1f83b0fcaf77a88e504c0d09b297ed9c8c2708fc4b4c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.2/gittype-v0.10.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76d3b9b56554d5aab102cb98adb77f71faaa33b3d469ead585c8ccec37dc6539"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.2/gittype-v0.10.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56d086a47524907689bec0640a140090c87fa257ad0e02e92e9c0579a743f2ae"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
