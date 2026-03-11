class Ragcheck < Formula
  desc "Score retrieval runs with offline Precision@k, Recall@k, HitRate@k, and MRR@k"
  homepage "https://github.com/itamaker/ragcheck"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/ragcheck/releases/download/v0.1.1/ragcheck_0.1.1_darwin_arm64.tar.gz"
      sha256 "d566ba22bb1c16071fefca47d066a17fc4ab297f88310abc04abafd6101921e0"
    else
      url "https://github.com/itamaker/ragcheck/releases/download/v0.1.1/ragcheck_0.1.1_darwin_amd64.tar.gz"
      sha256 "9b8ddb40be1708e2434c529fece5286933408679295b81c8416ea6cce68c193d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/ragcheck/releases/download/v0.1.1/ragcheck_0.1.1_linux_arm64.tar.gz"
      sha256 "a46d0f3a5a904585c6992d4229d07c75e9203bb3aa7b16de981931eb6d92074b"
    else
      url "https://github.com/itamaker/ragcheck/releases/download/v0.1.1/ragcheck_0.1.1_linux_amd64.tar.gz"
      sha256 "f75f20c5a30f3f28055e1117621980ca12f69b052117910ddc355380da88e92b"
    end
  end

  def install
    bin.install "ragcheck"
  end

  test do
    system "#{bin}/ragcheck", "--help"
  end
end
