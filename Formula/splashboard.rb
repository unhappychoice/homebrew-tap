class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v0.4.0/splashboard-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "6eb66004a2be9cdff148ef576b0ca1a14284f1569e0f55bb2b9f3b55eadd5e89"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v0.4.0/splashboard-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "175a5b7c319195e4a01044ec1f8407f3777c7c0772bbc5d947bfb4469d0c5e53"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v0.4.0/splashboard-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6fcd1464eb014c781862408c4d149d7a4670fb74ec51e49aed7d3cbcaf0b7b72"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v0.4.0/splashboard-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28d6549e8fdb309551d4cb40406858963b2457040a612ec604380cf9f97d6563"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
