class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.2.2/splashboard-v1.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "49a6c785996d6e8920e4abd41dee71af23f7b8ad3fe592c73d59b7038793e858"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.2.2/splashboard-v1.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "7c8b52361e965af7319fb6f5abb45ef2b9f0b425877e03fe70984cb2e67650b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.2.2/splashboard-v1.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b430d17214dd39cda8826af819186a569688e15f1e854162a5f9f191859e0e8f"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.2.2/splashboard-v1.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ebbf34fa258d94c2917924dd29357bdcb8b53f9984492869f09075dbfd0e07f"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
