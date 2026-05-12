class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.6.0/splashboard-v1.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "20ba538294d960187ea801e6405c51cab67c7b0fa4001dc21a639c368660b45d"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.6.0/splashboard-v1.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "8e534fb87d5a6f6848247bdc7bf8244ec2f89f7c688ac3465bcbe0b054ec3af6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.6.0/splashboard-v1.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de29c7c73efa163d7073159d7274470f9a67ce4d1c3f0520c824b630869f11cf"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.6.0/splashboard-v1.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ff821a6ba143ff04d9b0c232241c96761015ecc29d4853a1647687598d26685"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
