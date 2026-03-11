class Skillforge < Formula
  desc "Scaffold OpenClaw-ready skills from a compact JSON spec"
  homepage "https://github.com/itamaker/skillforge"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/skillforge/releases/download/v0.1.1/skillforge_0.1.1_darwin_arm64.tar.gz"
      sha256 "3705ce3ee7c647e839906ab6edb1316ff407bedde31c40d771aa280c0b8ed1de"
    else
      url "https://github.com/itamaker/skillforge/releases/download/v0.1.1/skillforge_0.1.1_darwin_amd64.tar.gz"
      sha256 "f585ed09a86caca5a924c275bf8e789e643cd4c3f6e348b2ed1af7cfe797f5b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/skillforge/releases/download/v0.1.1/skillforge_0.1.1_linux_arm64.tar.gz"
      sha256 "b03f65b5e8d08dbf07b2af27fc5f05def20e7307e9f903f638d553daa10c1152"
    else
      url "https://github.com/itamaker/skillforge/releases/download/v0.1.1/skillforge_0.1.1_linux_amd64.tar.gz"
      sha256 "add2869f0da200f7a76619c5727431dd0becea3293f5cf52c02439a46c86f0a9"
    end
  end

  def install
    bin.install "skillforge"
  end

  test do
    system "#{bin}/skillforge", "--help"
  end
end
