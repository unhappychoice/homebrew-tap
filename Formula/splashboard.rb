class Splashboard < Formula
  desc "Customizable terminal splash screen with plugin-based data sources"
  homepage "https://github.com/unhappychoice/splashboard"
  license "ISC"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.5.0/splashboard-v2.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "c057129dc5749ab5dd5d993f377d1e5bddbfa3140d948e3d197ac6e0f38d8fce"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.5.0/splashboard-v2.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "fdaa9ee48a9b3398303eca1f3ed75e1c313de13bed8bf27803a589a8cad38c0c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.5.0/splashboard-v2.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7f0d5f9e1c332bec2001fe45c1a815cf2b12b03cecc914ee73ad70e675e7e5d"
    end

    on_arm do
      url "https://github.com/unhappychoice/splashboard/releases/download/v2.5.0/splashboard-v2.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef2d5c83bd4e986ed685972d366a5678f5efa38c25209790c178dada6f20403f"
    end
  end

  def install
    bin.install "splashboard"
  end

  test do
    system "#{bin}/splashboard", "--version"
  end
end
