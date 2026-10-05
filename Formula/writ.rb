class Writ < Formula
  desc "AI-native version control for agentic systems"
  homepage "https://github.com/andrew-garfield101/writ"
  version "0.2.1"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-aarch64-apple-darwin.tar.gz"
      sha256 "4acc2a0de660b67ea221ba0c5f61232e5a1e4937e94a6bbecb54a3c7b7df1879"
    else
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-x86_64-apple-darwin.tar.gz"
      sha256 "a630c24f2a504f35b0595fa60c9735c892047b95f7807a93f739f15735646cfc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "645a554512f987a4dfe56bed350513d03ff80aaaaf63002cd09fe69aa5e416f4"
    else
      url "https://github.com/andrew-garfield101/writ/releases/download/v#{version}/writ-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c528f400faac34e6fc6169ba32532ba7d99333ff6395757e3a0025b5ddf666e5"
    end
  end

  def install
    bin.install "writ"
  end

  test do
    system "#{bin}/writ", "--version"
  end
end
