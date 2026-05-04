class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.2.1/splashboard-v1.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "bfb2f929462365d0a23731d8f25dbb679db43453ba4d5b1797b19f5892580608"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.2.1/splashboard-v1.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "ec364003d5d43c323b7fd465dc76d463bd5e96c34d9c2fab952f55bb30007e1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.2.1/splashboard-v1.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cafb0724d7478e11d2ca81997ee53b517e408346df2acdc0226e14440c801ea4"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.2.1/splashboard-v1.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "579429c86a9df31d51a6bdf0f37fe5ecd8ed3b8e6d299ef309d89f9d525f322c"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
