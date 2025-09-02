class Gittype < Formula
  desc "A typing practice tool using your own code repositories"
  homepage "https://github.com/unhappychoice/gittype"
  url "https://github.com/unhappychoice/gittype/archive/v0.2.0.tar.gz"
  sha256 "1a329344bfaee1b0a02cc6b8a82bbcc4c85a2c9625dfba02d89666e35ae2d3d4" # This will be updated automatically
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/gittype", "--version"
  end
end
