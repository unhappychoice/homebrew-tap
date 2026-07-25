class Steamfetch < Formula
  desc "neofetch for Steam - Display your Steam stats in terminal"
  homepage "https://github.com/unhappychoice/steamfetch"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.6/steamfetch-v0.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "d1026b36b562a066a3f6482bf4ef7956e0767f0e288fd2c1e3f6b30afca84bab"
    end

    on_arm do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.6/steamfetch-v0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "2b0008276510d84488fc0d7c071ee763801481dc55907c8aa754376857bfcf44"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.6/steamfetch-v0.5.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "380522aee663fa559cf8bd5b612115bd38d99f140268af884a41dfb2fce1b2ab"
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
