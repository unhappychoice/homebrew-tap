class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.5.0/splashboard-v1.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "15bde139b06fafdac015520b78d9dc8129cfb4989e31d67d25c6a8bd64abb3c1"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.5.0/splashboard-v1.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "ab2ab412e72a1e66374be59a424ba775a9899ca6f377a52c582ae2be0e43f2ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.5.0/splashboard-v1.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3d374abf614d6d9e4522ff456e01b4ed523046b5d4bce0e986f19204bf97c86"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.5.0/splashboard-v1.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f0d18d2cd894104ce372bd5be2de18ddcec6f27d754ccef80100be36dffbe5a"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
