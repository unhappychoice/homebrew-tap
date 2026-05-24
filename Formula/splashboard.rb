class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.7.0/splashboard-v2.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "7323d0d19e3f2b33f0ccae2a499c903f2fd757e3f9edc4952f4b05ab1917577f"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.7.0/splashboard-v2.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "36da8cb164d6328ac67daadb1eaaf8d5964d0588d3758b416c407b5bfe9f7c3e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.7.0/splashboard-v2.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1bb8766534182fa58f40034fa07b1201f877eb9f8ea39ec390b2a182a16d236"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.7.0/splashboard-v2.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f180433cb38455e6f141aa1ac5f2c676b7aeb031ed3d62054ac0abac73b14618"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
