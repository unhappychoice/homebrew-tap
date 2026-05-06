class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.3.1/splashboard-v1.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "bcb645487c96e4ca572422bcecf3e7beedfa61f8c9f5c48c306daa7c276f8f50"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.3.1/splashboard-v1.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "3e1cde52b8ff98ea6453b0d8d02b8db813c547b426e2b742cf6f2829ffaab56d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.3.1/splashboard-v1.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e4ae032c9af4b89c93f94915597360998dcd82d2dfdf759e2b656e14b86def2"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.3.1/splashboard-v1.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "964950db9908d6d6f1ddd6ab0bc2759e5c26668efd1527c7b5b1a53c6fab818f"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
