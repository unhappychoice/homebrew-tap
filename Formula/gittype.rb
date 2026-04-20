class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.0/gittype-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "e5a11615f9038a714bc17c0124ed45b6b8ec1d7b246f1a3d28934c7e0bda5623"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.0/gittype-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "854226e6bdea4e85395aa57c915a7ae83d1fb5d5c8d8d94f272058cf15d75373"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.0/gittype-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e227fa47ba38602ac159bfc3d52cd6978924bf69523f1063ee7577e969d391d"
    end

    on_arm do
      url "https://github.com/unhappychoice/gittype/releases/download/v0.10.0/gittype-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d260b03e28cbccfba8aa5055f349e1ce75565db62057d426357437f7159f0356"
    end
  end

  def install
    bin.install "gittype"
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
