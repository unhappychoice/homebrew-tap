class Steamfetch < Formula
  desc "neofetch for Steam - Display your Steam stats in terminal"
  homepage "https://github.com/unhappychoice/steamfetch"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.1/steamfetch-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "c7f4e808069d6f27d001c2965f45d13020ea72e5bdab05461d09a7415fa9cc6e"
    end

    on_arm do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.1/steamfetch-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "bd4e4dfb42d99a84725528392ca51390fce372e6f097c91a1f076a4436d80d27"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.1/steamfetch-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "690e4a52fd7fbda41ab4bc4f4edc43432af353a9c39f727651163931d790dba0"
    end
  end

  def install
    bin.install "steamfetch"
  end

  test do
    system "#{bin}/steamfetch", "--version"
  end
end
