class Runlens < Formula
  desc "Inspect agent and tool JSONL traces for latency, failure rate, and token usage"
  homepage "https://github.com/itamaker/runlens"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/runlens/releases/download/v0.1.0/runlens_0.1.0_darwin_arm64.tar.gz"
      sha256 "37e2801dd7a7fef601eb09ae424b199dcbfafc64d43657f52fad4f0799f3deea"
    else
      url "https://github.com/itamaker/runlens/releases/download/v0.1.0/runlens_0.1.0_darwin_amd64.tar.gz"
      sha256 "667213f996e9b6fefcfbb2a43a0996f4ead5dc085fef0c27d9747a0644315d4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/runlens/releases/download/v0.1.0/runlens_0.1.0_linux_arm64.tar.gz"
      sha256 "dd1c424bb9f945dd4d3e347501bb484b439429dd24af81dfccd8d11b903ef820"
    else
      url "https://github.com/itamaker/runlens/releases/download/v0.1.0/runlens_0.1.0_linux_amd64.tar.gz"
      sha256 "325b74a61e2bda7559e8532a2e298bede096589722d40773ef74f10f5582faa1"
    end
  end

  def install
    bin.install "runlens"
  end

  test do
    system "#{bin}/runlens", "--help"
  end
end

