class Runlens < Formula
  desc "Inspect agent and tool JSONL traces for latency, failure rate, and token usage"
  homepage "https://github.com/itamaker/runlens"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/runlens/releases/download/v0.1.1/runlens_0.1.1_darwin_arm64.tar.gz"
      sha256 "caaea6b03dc5e8b03098e7ff2b5ee58942b9e4b7025e01d44325a451e41bc68f"
    else
      url "https://github.com/itamaker/runlens/releases/download/v0.1.1/runlens_0.1.1_darwin_amd64.tar.gz"
      sha256 "0fa20d8e9d4aca3e3c777606aaff0fdeeb51542a9744ab522cd2d98218249978"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/runlens/releases/download/v0.1.1/runlens_0.1.1_linux_arm64.tar.gz"
      sha256 "147b1e9ffb25ba8e0b04c9c8c562342f3ceeaf0af261b03cdb45e1fee2e0e055"
    else
      url "https://github.com/itamaker/runlens/releases/download/v0.1.1/runlens_0.1.1_linux_amd64.tar.gz"
      sha256 "d33dfec1b9995604d0ea936f0e2a2bf81d0d20c7390513827d688f669636eb9e"
    end
  end

  def install
    bin.install "runlens"
  end

  test do
    system "#{bin}/runlens", "--help"
  end
end
