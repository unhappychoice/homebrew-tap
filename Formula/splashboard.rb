class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.1.1/splashboard-v1.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "8a6eccdf869a4b818096be87449facbf7028cf8a21b4770b5e21146b0cc44ddc"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.1.1/splashboard-v1.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "a300eff1c460c0988a408da32e53d85ad2c76b7180f9fb5dd3e81d2ef532427b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.1.1/splashboard-v1.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db6f53f6181f45424b607c1fc021e057852d60c74c17fb7106bb2d2750a3bd74"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.1.1/splashboard-v1.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3dd808ed9849dd4c2836ed3f490ee8b982e492953ebed9f7d1b109b03c39dbda"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
