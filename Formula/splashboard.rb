class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.4.0/splashboard-v1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "12be13f29fdbbaf6876b41775993652c9b2d85a4c8a740dcb8b8a01778ba541b"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.4.0/splashboard-v1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "4113554cd493cb44612a5be810b61022cd894df2af6a8562bff5d323c6b4c75d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.4.0/splashboard-v1.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "285a9282190eed6d0cf46a233acd7223b891b8e2bf404462ac7df651cc77ceeb"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.4.0/splashboard-v1.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08d3ecefc7ed06ef649944891990c228976565b7f7876ebfdac858c997077d3d"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
