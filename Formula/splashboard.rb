class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.4.0/splashboard-v2.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "57b7f7f4a212eecb48ce458121f673b1c3ec6a7927c7a5d7df02fef8aa104d51"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.4.0/splashboard-v2.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "45e93863a060319a15744fc520f4dc013c61531f3c7249a6356df52a423ee306"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.4.0/splashboard-v2.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ed1489345802806e98bb4d9a0f49b8991d176bcf9b59eea97e444361ba8c9da"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.4.0/splashboard-v2.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a02e41e361e271a0dd1789a6c2ccfc716dee390da1e35e49f794cf92f048dad0"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
