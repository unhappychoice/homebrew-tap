class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.3.0/splashboard-v2.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "2d38244f85b9cf8b33537e68214b455deaad224fa6366b1e239d5852f1296c8f"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.3.0/splashboard-v2.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "4ddc8238e8cab1aa9e6f4b278cef3997501e2c5f21fed357fed4b2dc86211639"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.3.0/splashboard-v2.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ca27c4cbaf25b69e44eab73f36acde6c975f78972c0a8c9a41dee41b8a2bacf"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.3.0/splashboard-v2.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "090962ed2aebcdd5ca7d4c7c1212b394ad9718ee055f6255fdf813feae2b9cc0"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
