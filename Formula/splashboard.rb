class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.8.0/splashboard-v2.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "e4bb19f4719d5b616d76939b14d5570995f01a4805d8b9b642c3d7b82e6c11be"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.8.0/splashboard-v2.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "73e173ee58eeb00de0c1de3df3602b713fc57757c9f8e80df58c793d5d6cc3e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.8.0/splashboard-v2.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7622a71049babe1da36094eef7fc46ae1469a5298aca2a071e3ee1ecc650ece"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.8.0/splashboard-v2.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51c1d2299557ed8357f7a833cc3492c882a497c35f83dbb16b752addaa87f661"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
