class Writ < Formula
  desc "AI-native version control for agentic systems"
  homepage "https://github.com/andrew-garfield101/writ"
  version "0.3.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-aarch64-apple-darwin.tar.gz"
      sha256 "1c0434d8795a613b0fa1e29eb745beb900a3d0c1496277d07891d5a2c80b751c"
    else
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-x86_64-apple-darwin.tar.gz"
      sha256 "68b81a738ee973073ae41b4b047d36adb5a9e7faa88de117e599382518495a4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "611e91216348c04dff2abeb14af4207093cff6903d53152fe064c64a7691c0d1"
    else
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e16037c6e20880d0e03acb45ed63c2162723c6fceaa318d938ac52f77173c1f0"
    end
  end

  def install
    bin.install "writ"
  end

  test do
    system "#{bin}/writ", "--version"
  end
end
