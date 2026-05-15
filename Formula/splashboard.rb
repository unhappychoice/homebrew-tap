class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.2.0/splashboard-v2.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "19e469e67ecba9082642f2b9a540bca1d0e63067baf68b38bce5edff92f0231a"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.2.0/splashboard-v2.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d6337a8ffc26b7995640bea534f659253f04b547417ba08ea9b3d6af982c21e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.2.0/splashboard-v2.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d5f63a517dc933ab086e025465ae052bc91f52c94eb4521a17c18c00f1d1932"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.2.0/splashboard-v2.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e5e02e44f011a6e2587d6143b4609121cc1cadab18617baf130040a0b0297a3"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
