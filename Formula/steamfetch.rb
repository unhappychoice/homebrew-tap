class Steamfetch < Formula
  desc "neofetch for Steam - Display your Steam stats in terminal"
  homepage "https://github.com/unhappychoice/steamfetch"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.4/steamfetch-v0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "d68c90a741df0cb8aa7d5180a016ef58fc84858077183253a2ab63831811ec60"
    end

    on_arm do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.4/steamfetch-v0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "ae76fa4482aa6d54defedff53d1ef7ca95c967c457c03ae29d79ddb1c643ba4e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/steamfetch/releases/download/v0.5.4/steamfetch-v0.5.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1277298d0aa3f1041b26241a29bce7d8a99aea938fc95737ea449f2fbe3a0f0f"
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
