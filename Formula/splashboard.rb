class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.1.0/splashboard-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "69732fca04f179f50f15e85a532fc14f2027fafe396c0f13ae00841edb94a339"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.1.0/splashboard-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "57d05054b71672c6b8a1f90bdcfa2beda60ddb2662f07978c5af97ecf587bbf3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.1.0/splashboard-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b745a3c8eae0363a869901ef608ee4ef98f4b2759f855182f32d3734ba4bc21e"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.1.0/splashboard-v1.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa27370f483a3fb1b54df70e686a727431b3d02b931583826a63cf76a9b41c1b"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
