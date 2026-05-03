class Kobito < Formula
  desc "Autonomous coding agent orchestrator"
  homepage "https://github.com/unhappychoice/kobito"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.2.0/kobito-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "0e01fd16a9acacd6963a58eb1284e0d5fded8ce86463acd36bb296ebb1d5a75a"
    end

    on_arm do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.2.0/kobito-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "c3068e16ee19ab032fea105a0e8781f7af9462639691d44387e11375395b8dd3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.2.0/kobito-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31c49632cb3ccb3ace2abb197d6c507d17eccadfbd4b950065b87bd87e35a42f"
    end

    on_arm do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.2.0/kobito-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c19e2f4e79c93a6b066ab54aa1f7d8463406bcc2070e7d75795bdc5ad2a4e76"
    end
  end

  def install
    bin.install "kobito"
  end

  test do
    system "#{bin}/kobito", "--version"
  end
end
