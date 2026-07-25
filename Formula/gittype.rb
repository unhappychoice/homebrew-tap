class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.1/gittype-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "ca39b79d9381cab790838cf7de3a012772bb56842b87fbc9806d483871291834"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.1/gittype-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "a846059c65d1b1afbd4dd9dc71189df2fce1f1a20eeb66f731277cd574e4e339"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.1/gittype-v0.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4811313aa3b26208c94adeeee1cd2ceff40d6de8cb1238b9b6fd676fdac14f74"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.1/gittype-v0.10.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03f996f7b17b87d23f49dd87c739cd09e9922979d8705697a428769a110c5283"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
