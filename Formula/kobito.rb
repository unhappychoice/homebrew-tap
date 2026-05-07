class Kobito < Formula
  desc "Autonomous coding agent orchestrator"
  homepage "https://github.com/unhappychoice/kobito"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.2/kobito-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "713dc53f15f6d1d4a07617a5b5ea10690deed9508fbd9037cd8063b999ae2b3c"
    end

    on_arm do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.2/kobito-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "6801b1f65053dc02eed68298b946cf3ddd73168dc3cf3ee8116a48e4294c3611"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.2/kobito-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f9ac08193900873882c012454af0d391296cc7005b0e50d4d548cee3e71ca33a"
    end

    on_arm do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.2/kobito-v0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3b88fae13bf8a07c9f8926ca90d172d044d67cd2e53cf0d77e7e2b651c79490"
    end
  end

  def install
    bin.install "kobito"
  end

  test do
    system "#{bin}/kobito", "--version"
  end
end
