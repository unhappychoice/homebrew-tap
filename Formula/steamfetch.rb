class Steamfetch < Formula
  desc "neofetch for Steam - Display your Steam stats in terminal"
  homepage "https://github.com/unhappychoice/steamfetch"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.2/steamfetch-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "5ef29a2b2b47d1654ee8e6d994cf1d1dad30e0f8c33e5e8fb81938bca698213c"
    end

    on_arm do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.2/steamfetch-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "45c0fccfe8d9505921a243b28a72a4bbe6c0d0eb45aa0467842bc2a116d2b0a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.2/steamfetch-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9ca4080f136dd4ce192222699513c8ce00c8c2990c282c7fb32a63f62ae6771"
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
