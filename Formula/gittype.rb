class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.7.0/gittype-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "5acd7efcf341a7f25fb4b34b28ff6a0ce811a525d9f0725df422bc2bca89d3ae"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.7.0/gittype-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "8f23d72e01b7b0f6d7468626d917efbfc376ddf371d4ffd9ebf812e96fbb7386"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.7.0/gittype-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a856fdac0c75572c70b9a97a47936f443530992626a6c67848173fff47e129c3"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.7.0/gittype-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e02a8d68e263d6cf4f5e101ce981492474909d75c4531a6e6ec2ef8a524e16ec"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
