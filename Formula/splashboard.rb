class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.6.0/splashboard-v2.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "fec5247299810bb4a8337ff4760a9193d819fd5ffd3b17b3ad8ae1673448b095"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.6.0/splashboard-v2.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "e0f552dce0066415f440689852a52447a62264b801469274963959b377040157"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.6.0/splashboard-v2.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d73403f99622844fec137f4b691be77fdcedb6caecd493fc824ad7ae8fc9e96"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.6.0/splashboard-v2.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cf1fde3d9f213fb7558283a19da11dbf66b5f61b9e078f1e7455dbcae5da7a26"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
