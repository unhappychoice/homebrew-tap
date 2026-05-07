class Kobito < Formula
  desc "Autonomous coding agent orchestrator"
  homepage "https://github.com/unhappychoice/kobito"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.1/kobito-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "c4748b9f9991a5e0e2eebc6cb9a1a7bf1dfe8420e05bc5a8c2e4aef8d2e536b4"
    end

    on_arm do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.1/kobito-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "780a572005a02db69d7662d59f1fd8afd6338967c1ed654d8f50c42a8a610aca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.1/kobito-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ec54439ccb27956b1a41c6b465efd7f20ef8dea96a19b6d1c6d961b2df0ec27"
    end

    on_arm do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.1/kobito-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b27be2ce2574c23443e6834a8c9265a6c7961c526b8474799f3a79d309edd552"
    end
  end

  def install
    bin.install "kobito"
  end

  test do
    system "#{bin}/kobito", "--version"
  end
end
