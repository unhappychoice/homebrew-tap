class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.2.0/splashboard-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "cb511d5b70a4124955f0b66e984096e09e53a6de133b10c66c77a5d98d633edb"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.2.0/splashboard-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "3a444d66c093dab4b74c0e69ce61da8dcc0fe9d78a76f1e376c02779c00a92e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.2.0/splashboard-v1.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6088e313f0ad89325b83e0378b6099ee1d1df4b5ed5a263aa676d312ebdbdf44"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.2.0/splashboard-v1.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe07004e5998317cfe7ab115df3407e88c042076f60904ac8ab247de8093bd1f"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
