class Skillforge < Formula
  desc "Scaffold OpenClaw-ready skills from a compact JSON spec"
  homepage "https://github.com/itamaker/skillforge"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/skillforge/releases/download/v0.2.0/skillforge_0.2.0_darwin_arm64.tar.gz"
      sha256 "e95dafc517482f2bb0edeb2589534fe32eb958460a33630cf0897d58d3386c5c"
    else
      url "https://github.com/itamaker/skillforge/releases/download/v0.2.0/skillforge_0.2.0_darwin_amd64.tar.gz"
      sha256 "7177372314d215d2fa10e4cac99dfa648f4932b40f8f7e836591f9843c9f95fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/skillforge/releases/download/v0.2.0/skillforge_0.2.0_linux_arm64.tar.gz"
      sha256 "eebaf362691bd868939d4656ada676f0980d33edf6d4182ca991cdf720c057b8"
    else
      url "https://github.com/itamaker/skillforge/releases/download/v0.2.0/skillforge_0.2.0_linux_amd64.tar.gz"
      sha256 "00932a9c5671252fc82a78780f0b8ae9ab24e5302f1fa9da34dac1a9b18885db"
    end
  end

  def install
    bin.install "skillforge"
  end

  test do
    system "#{bin}/skillforge", "--help"
  end
end
