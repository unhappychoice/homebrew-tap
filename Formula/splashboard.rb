class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v0.2.0/splashboard-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "7b4a7098f54a39fe84fcf551ecb11c54815d026eedc49757ce42ae7f46b34cd1"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v0.2.0/splashboard-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "c251adc3d5798b08729620869e7ecc20ee2bcc85dc500a03420d2ec8a485c765"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v0.2.0/splashboard-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a15d2db03cdf0832b51267b8f33c240ce3e35ab306aa725f709ccc009da594be"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v0.2.0/splashboard-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e4108c9daf91023461b9d9f6888377cce0d64ed40178040dc64dc1b2c51aeca1"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
