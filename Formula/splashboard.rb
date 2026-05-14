class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.1.0/splashboard-v2.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "dc71b5c53b46e396297e3a5dfdf3c4795e9986a022a5ca2757edf9e2d46d1b91"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.1.0/splashboard-v2.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d8b4e7e03394625619cfb92dc85e01c5e8a9c7bfe3cb0776f4ed37f1f0810465"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.1.0/splashboard-v2.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb8b128171ac3dca856beb8a405248f3538b1e0f2de841e0e284c521e5fd0af7"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.1.0/splashboard-v2.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f2c91885748f750f600404da127a6f883808d2897afcf991f4c8182cae284f80"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
