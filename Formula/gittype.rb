class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.8.0/gittype-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "589f4c2123f044f5b90dacebcec3e2b06b6e178b53643069797335a2a94ae046"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.8.0/gittype-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "e67a709c4dd51cace22c76adba46a374a53e3497fbf564330f965e03e96fa375"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.8.0/gittype-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ed8cff5a617e90ef3e9e9e5f1b2144af35bd345544ab708dd7802847ca2c61f"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.8.0/gittype-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df7b79bcb67189d54b356b03faf8814591d066044388f79e8393146ffbebd2c9"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
