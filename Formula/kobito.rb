class Kobito < Formula
  desc "Autonomous coding agent orchestrator"
  homepage "https://github.com/unhappychoice/kobito"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.3/kobito-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "3d2b3fb23898c1fe095e8f8ebd0b26976aee0ec28e443ecda1890b3414386a8f"
    end

    on_arm do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.3/kobito-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "db273004b4a688070f75e3030d781800097e97be08ffaa01ad37e3402f0cfb80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.3/kobito-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4c9533c40e297600f9e2dcdda60010084aa6e17ad0b53ff20bd292857d05c18"
    end

    on_arm do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.3/kobito-v0.3.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0837fa16b787494f0c3ea0fb10439858d93ee97d98532261a01845d55fc07ed8"
    end
  end

  def install
    bin.install "kobito"
  end

  test do
    system "#{bin}/kobito", "--version"
  end
end
