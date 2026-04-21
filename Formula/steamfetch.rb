class Steamfetch < Formula
  desc "neofetch for Steam - Display your Steam stats in terminal"
  homepage "https://github.com/unhappychoice/steamfetch"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.5/steamfetch-v0.5.5-x86_64-apple-darwin.tar.gz"
      sha256 "cb9fc74d30abdaf660116ad9bd7a3f42463e8c38ba20a43fd79da1586e927212"
    end

    on_arm do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.5/steamfetch-v0.5.5-aarch64-apple-darwin.tar.gz"
      sha256 "f4bd6b237afbe7c9b329b64ed4c76e73879f962819b2d43edbdbf7b3ff56ac85"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.5/steamfetch-v0.5.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "73f960f42b00ba0ddf292b4e49936218d905834daf625b7e919d4dde0db6d048"
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
