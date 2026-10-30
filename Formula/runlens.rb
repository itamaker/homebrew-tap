class Runlens < Formula
  desc "Inspect agent and tool JSONL traces for latency, failure rate, and token usage"
  homepage "https://github.com/itamaker/runlens-skill"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/runlens-skill/releases/download/v0.4.0/runlens_0.4.0_darwin_arm64.tar.gz"
      sha256 "77a799433c02db5213abf33665dae98e2ee0bedf9db06212504456cd62a41905"
    else
      url "https://github.com/itamaker/runlens-skill/releases/download/v0.4.0/runlens_0.4.0_darwin_amd64.tar.gz"
      sha256 "600211fda1193a5664fabb0f4dbd0a5ce8b713e84677b429c59fc1f0cd9d5cb2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/runlens-skill/releases/download/v0.4.0/runlens_0.4.0_linux_arm64.tar.gz"
      sha256 "bc8d365e880d59c11b083700f243317c8734ff7b2065e189b083f4fd3d1f5ae7"
    else
      url "https://github.com/itamaker/runlens-skill/releases/download/v0.4.0/runlens_0.4.0_linux_amd64.tar.gz"
      sha256 "9718249592d9205806ed901a0d3aff50218643b58d9cb71ead43629f125e2c72"
    end
  end

  def install
    bin.install "runlens"
  end

  test do
    system "#{bin}/runlens", "--help"
  end
end
