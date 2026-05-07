class Kobito < Formula
  desc "Autonomous coding agent orchestrator"
  homepage "https://github.com/unhappychoice/kobito"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.0/kobito-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "2ac2eaf792b92bd7bfd4195cfde12f826381af241b251fa769d0b7431ce1b209"
    end

    on_arm do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.0/kobito-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "028ec1fce1294b350d60c8252f2977169f49fe15ebca4d4095adb4ab893e6040"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.0/kobito-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "255bb38e9322422c818b0997343aca1302db20073064816bc10c605421668098"
    end

    on_arm do
      url "https://github.com/unhappychoice/kobito/releases/download/v0.3.0/kobito-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21fcb58f47331d7dbd6c9e6db89d8be07d5386371a7f7944c2075a4144e3b29d"
    end
  end

  def install
    bin.install "kobito"
  end

  test do
    system "#{bin}/kobito", "--version"
  end
end
