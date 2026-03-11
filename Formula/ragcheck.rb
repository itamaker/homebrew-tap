class Ragcheck < Formula
  desc "Score retrieval runs with offline Precision@k, Recall@k, HitRate@k, and MRR@k"
  homepage "https://github.com/itamaker/ragcheck"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/ragcheck/releases/download/v0.1.0/ragcheck_0.1.0_darwin_arm64.tar.gz"
      sha256 "85ea3ac1e8e2936df7e61bf5cd63b2aeae6e083d09007d58667c2cf811f39ef1"
    else
      url "https://github.com/itamaker/ragcheck/releases/download/v0.1.0/ragcheck_0.1.0_darwin_amd64.tar.gz"
      sha256 "2c0e3433074a6f96254037b5a14b27815fae538a190e54fb6668274f119d7121"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/ragcheck/releases/download/v0.1.0/ragcheck_0.1.0_linux_arm64.tar.gz"
      sha256 "9010f2dd2821a61c2c47faae183d90dc8c830e0a04c1db7168c302b9db474d23"
    else
      url "https://github.com/itamaker/ragcheck/releases/download/v0.1.0/ragcheck_0.1.0_linux_amd64.tar.gz"
      sha256 "7259906f8664658098c65c6ffd94e0c3cf45d7b8a8fb0d2244f54d6aca592b57"
    end
  end

  def install
    bin.install "ragcheck"
  end

  test do
    system "#{bin}/ragcheck", "--help"
  end
end

