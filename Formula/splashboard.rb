class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.0.0/splashboard-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "63dd9cfafdc90de4210975111985ba4a5f4511b6b6cf5588450906127c867b52"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.0.0/splashboard-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "9ab82a3ef928e0f673442e11899e13831fe570ad5ba23b53f8fc23c97ac6f443"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.0.0/splashboard-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2fbb97c5a59aae33d6b3d228e77dc569f3b64e24109070c5e6d82e3871d83fc"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v1.0.0/splashboard-v1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe8be49d23cf742355ca67b7dcc9979cada1a56c8ef20c58d9eb56c08b9dc228"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
