class Writ < Formula
  desc "AI-native version control for agentic systems"
  homepage "https://github.com/andrew-garfield101/writ"
  version "0.2.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-aarch64-apple-darwin.tar.gz"
      sha256 "4bb976d29a4f1d7b80a0dd0d85cbf20b0cdf16ae0f80dc92fb1afa6b1b32fa1b"
    else
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-x86_64-apple-darwin.tar.gz"
      sha256 "f0faf054c7188af91f7554040ef5777ebb8a7c7395e30bdf84171b633d0f4fca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0441aa0aee0f351bb82f47974c8eaa275f7a88bb97f46c280b653c521c9ff64"
    else
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b7bf75f06736b7c5d10e50173e94584c56df3f5b6ee7e64ee30e2ec9bb7f3a5"
    end
  end

  def install
    bin.install "writ"
  end

  test do
    system "#{bin}/writ", "--version"
  end
end
