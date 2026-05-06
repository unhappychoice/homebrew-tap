class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.3.0/splashboard-v1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "a3484e7d746a0d81f35db6642187abb53edf0b770f2476fe9efa908b26198ab4"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.3.0/splashboard-v1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "7cd45334991684c3a88f4a30a3272b612d8b6b5e58de9b8cbe53dd2760c8cd7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.3.0/splashboard-v1.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d87eddf78b2ea1bf81d953f46788afd1d602af978940125dc9f2990e6d08cf00"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.3.0/splashboard-v1.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53eedd26aee679ff81b83427835e7cfa57520cb42a912aa5cdb0b4329e231bd3"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
