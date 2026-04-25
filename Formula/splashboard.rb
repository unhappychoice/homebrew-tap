class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v0.3.0/splashboard-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "2823d29a9a271799f9a0c5956cca1e00ba21bbf637f327b2ecaef7c4a88947b7"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v0.3.0/splashboard-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "d198c864ad68765f6adc13fd83f370fc131ad8bd54991a5d78da8320fa66fbe2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v0.3.0/splashboard-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b374de423a718a22838c5e5cb537bb5278b41df48a47fb0abfc86acc74789aa"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v0.3.0/splashboard-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc0afe703da2900f909d1b5e3f67ca4502079cf32b687a0eb2a9463ea05f93b6"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
