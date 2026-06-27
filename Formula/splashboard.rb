class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.0/splashboard-v2.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "be5acebd5694f63668f838c5f336667812dcb0a2cabf9a338abf1eae265b2d46"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.0/splashboard-v2.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "ce7f5583fac9d963d65bee43560bcc24c1d3c9968028caf78fbb157ee82839c0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.0/splashboard-v2.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d118bd3d072926706a9091a5c9803cecf8961a58c1801486d62f293e6867ae4"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.0/splashboard-v2.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "513881df2bac40356d01aa327f8a3371066fe152992210b3803970226d9363f4"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
