class Steamfetch < Formula
  desc "neofetch for Steam - Display your Steam stats in terminal"
  homepage "https://github.com/unhappychoice/steamfetch"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.4.0/steamfetch-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "5558b783ecd5ecee313df167b04c4fbf24f9fd6f0ba776ff530ae764d84c1296"
    end

    on_arm do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.4.0/steamfetch-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "365427b08c3cff11461013dbf2b3f0c0addb426ad9822795f29b04355bcf5d96"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.4.0/steamfetch-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7211ee1431d16e6add49888ae266d5492b642860cbbc8d286aae0ad19bbbb77b"
    end
  end

  def install
    bin.install "steamfetch"
  end

  test do
    system "#{bin}/steamfetch", "--version"
  end
end
