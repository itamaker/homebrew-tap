class Runlens < Formula
  desc "Inspect agent and tool JSONL traces for latency, failure rate, and token usage"
  homepage "https://github.com/itamaker/runlens-skill"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/runlens-skill/releases/download/v0.2.0/runlens_0.2.0_darwin_arm64.tar.gz"
      sha256 "91a2ecbff1c5a7732d5db5aba4f629ea9e70825b0d8241d108a5628b9d6d0577"
    else
      url "https://github.com/itamaker/runlens-skill/releases/download/v0.2.0/runlens_0.2.0_darwin_amd64.tar.gz"
      sha256 "ada03cdcef9a846d071636ef40ba1e7b1eb6f7d2dbbebc5c51eb12ad6857ee16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/runlens-skill/releases/download/v0.2.0/runlens_0.2.0_linux_arm64.tar.gz"
      sha256 "9eb56b6db4c42acf38c015591a182c72b916b508b883fcb8a076fe2e8a099fcc"
    else
      url "https://github.com/itamaker/runlens-skill/releases/download/v0.2.0/runlens_0.2.0_linux_amd64.tar.gz"
      sha256 "ad9a42061994e52f8718dacf2699bbded3a4418d533aabd18404b0b41ad6eccf"
    end
  end

  def install
    bin.install "runlens"
  end

  test do
    system "#{bin}/runlens", "--help"
  end
end
