class Ragcheck < Formula
  desc "Score retrieval runs with offline Precision@k, Recall@k, HitRate@k, and MRR@k"
  homepage "https://github.com/itamaker/ragcheck-skill"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/ragcheck-skill/releases/download/v0.3.0/ragcheck_0.3.0_darwin_arm64.tar.gz"
      sha256 "2560b8bfce1a50888aa5fe3edbb03afd9ad895fe697e52acba155e9cba2ab1ef"
    else
      url "https://github.com/itamaker/ragcheck-skill/releases/download/v0.3.0/ragcheck_0.3.0_darwin_amd64.tar.gz"
      sha256 "2a12070d7b43b5941ce411fa5c19e80e909bfb7f2ce724a691b2edadeb29bfa9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/ragcheck-skill/releases/download/v0.3.0/ragcheck_0.3.0_linux_arm64.tar.gz"
      sha256 "8e7038880f864c3f23e296847becfb754c7c9834ac954d30226ff74ed29b93e9"
    else
      url "https://github.com/itamaker/ragcheck-skill/releases/download/v0.3.0/ragcheck_0.3.0_linux_amd64.tar.gz"
      sha256 "31fb6a2120f9b7ed38c35422b81d5e2551c21d793668216d55ea4ea729e6228d"
    end
  end

  def install
    bin.install "ragcheck"
  end

  test do
    system "#{bin}/ragcheck", "--help"
  end
end
