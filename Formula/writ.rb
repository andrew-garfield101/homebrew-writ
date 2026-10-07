class Writ < Formula
  desc "AI-native version control for agentic systems"
  homepage "https://github.com/andrew-garfield101/writ"
  version "0.4.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-aarch64-apple-darwin.tar.gz"
      sha256 "6faf1c5d472e243028eaa9950a72c4193d8ebe5301da9e9a19a4285f41e6cb32"
    else
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-x86_64-apple-darwin.tar.gz"
      sha256 "47e6750047f3fba86e308c4c03c4131cc67bd1c1c5abb685e7fee1a045c7690a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24d8ef38a97d3358304c76c6186f40d83ef7beeca63a2e831cb2a1e91749d02d"
    else
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c84b25f2dd0724d01675b19fa54802bef691728c0f0bc0480297265b7d0cf62"
    end
  end

  def install
    bin.install "writ"
  end

  test do
    system "#{bin}/writ", "--version"
  end
end
