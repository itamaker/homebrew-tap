class Ragcheck < Formula
  desc "Score retrieval runs with offline Precision@k, Recall@k, HitRate@k, and MRR@k"
  homepage "https://github.com/itamaker/ragcheck"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/ragcheck/releases/download/v0.2.0/ragcheck_0.2.0_darwin_arm64.tar.gz"
      sha256 "140484cf3a0da603ca3fee98293cb8a216c7a86565ccbff0d8f4d85b820b67a6"
    else
      url "https://github.com/itamaker/ragcheck/releases/download/v0.2.0/ragcheck_0.2.0_darwin_amd64.tar.gz"
      sha256 "6d0ef8c4d9d67ab116370223a58f8905885bbcc390377672693609bf6899b662"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/ragcheck/releases/download/v0.2.0/ragcheck_0.2.0_linux_arm64.tar.gz"
      sha256 "b0eeb3a7d6ca1d138f8153595763102f0e704d0f5de2da69065916a79f6d2171"
    else
      url "https://github.com/itamaker/ragcheck/releases/download/v0.2.0/ragcheck_0.2.0_linux_amd64.tar.gz"
      sha256 "f28e725999c75033efda5962ac98179e79e1c8f662c08ee0d373b3edb35c1e72"
    end
  end

  def install
    bin.install "ragcheck"
  end

  test do
    system "#{bin}/ragcheck", "--help"
  end
end
