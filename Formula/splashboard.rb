class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.4/splashboard-v2.10.4-x86_64-apple-darwin.tar.gz"
      sha256 "562d799e13b2cb592865fd736671a23721556375a6c33cce1fb70a09ea8c6fa5"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.4/splashboard-v2.10.4-aarch64-apple-darwin.tar.gz"
      sha256 "06f469fb407e24e2b743099dbb454e0398eeff9a283ab094f55f94099ac6f263"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.4/splashboard-v2.10.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3435c1f30b15b8ad27bef33b4e7a7c60443ec1a5956b22382b7569a67bfd396"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.10.4/splashboard-v2.10.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a90bc74a2bae9467c3e8ee1bed91acd8ea8c8e9abb6b5d7a01601ffe48285e38"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
