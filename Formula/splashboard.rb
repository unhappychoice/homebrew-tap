class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.0.0/splashboard-v2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "3e11acf1c3f6734daf718487b06039ecdb69cd4060a40ec031ea7c25f97cda7f"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.0.0/splashboard-v2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "eb61f3dc5e2597661874605e2b4538d8744595db0ea92ea1635a8b4120d1f684"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.0.0/splashboard-v2.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5d1707e60b61d6288d4f6d384d12f7b0e4a206517aa372d98badd2be9a56039"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.0.0/splashboard-v2.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d8ed52ed729415af7ec626d82e4892eb2e91f0d1673e227174003766495ace6"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
