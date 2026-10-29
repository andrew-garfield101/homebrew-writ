class Writ < Formula
  desc "AI-native version control for agentic systems"
  homepage "https://github.com/andrew-garfield101/writ"
  version "0.4.5"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-aarch64-apple-darwin.tar.gz"
      sha256 "f8173545648049fe3d34df34a1fb0155ad6635672c025f915f8f2e6e3d2ac681"
    else
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-x86_64-apple-darwin.tar.gz"
      sha256 "1c9a8cb0eddef4c06a0900fe5991a5a19e9483cee1104407a45c3e7beb18cc97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "563a2987b65d379b50efbdaacef842d7712bc99f945f06424fb820453775964a"
    else
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d126cf14e54e5f40586bdd5775be40d0b57d7eb851a7d4088420c4bb92b8f535"
    end
  end

  def install
    bin.install "writ"
  end

  test do
    system "#{bin}/writ", "--version"
  end
end
