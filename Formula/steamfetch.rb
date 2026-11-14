class Steamfetch < Formula
  desc "neofetch for Steam - Display your Steam stats in terminal"
  homepage "https://github.com/unhappychoice/steamfetch"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.8/steamfetch-v0.5.8-x86_64-apple-darwin.tar.gz"
      sha256 "16a756ed5329ddaa9e0602029e95391b2ebf7315a30d79ad3ebc13378c55a61b"
    end

    on_arm do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.8/steamfetch-v0.5.8-aarch64-apple-darwin.tar.gz"
      sha256 "e1c18b3d1a7ad02bfe5abe21d423b6dd0e1534a84918e892b36691b6d69965fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.8/steamfetch-v0.5.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b593028ea5048d4f97e72ff9a2f74412ef8a8df82db84089993349634e952079"
    end
  end

  def install
    bin.install "steamfetch"
    bin.install "libsteam_api.dylib" if OS.mac?
    bin.install "libsteam_api.so" if OS.linux?
  end

  test do
    system "#{bin}/steamfetch", "--version"
  end
end
