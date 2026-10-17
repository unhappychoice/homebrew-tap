class Gitlogue < Formula
  desc "A Git history screensaver - watch your code rewrite itself"
  homepage "https://github.com/unhappychoice/gitlogue"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.12.1/gitlogue-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "14120d6da41e21fad7b7c87d2f1cac019af6ef334f70045468252444d27d0667"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.12.1/gitlogue-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "db28ec8257f4ae4beb6524a933949379ea9f3b5a3c4d19b55d3060d68aff8bc8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.12.1/gitlogue-v0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3b51d4c6dd1d84d32eeaf0ecc5bb281bd3a48b300dc64028e5561b5748971c3"
    end

    on_arm do
      url "https://github.com/unhappychoice/gitlogue/releases/download/v0.12.1/gitlogue-v0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49559a53a52d6a19f526af6588ac623b823e33a00ebaa50be41db88bdd602cee"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
