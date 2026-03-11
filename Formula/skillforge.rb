class Skillforge < Formula
  desc "Scaffold OpenClaw-ready skills from a compact JSON spec"
  homepage "https://github.com/itamaker/skillforge"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/skillforge/releases/download/v0.1.0/skillforge_0.1.0_darwin_arm64.tar.gz"
      sha256 "9cf16aae871ef63bb38b172840bf1274a9ce339bbb009673dddedec93cbd2b84"
    else
      url "https://github.com/itamaker/skillforge/releases/download/v0.1.0/skillforge_0.1.0_darwin_amd64.tar.gz"
      sha256 "3de9ce871c650ad43ac52426c5a1afec886fff0ebd41c35d2021631590896952"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/skillforge/releases/download/v0.1.0/skillforge_0.1.0_linux_arm64.tar.gz"
      sha256 "e88d1fcb54c74e39c42b8dabf39dcf7a5268c0fd622978583f20db4100bb3a6a"
    else
      url "https://github.com/itamaker/skillforge/releases/download/v0.1.0/skillforge_0.1.0_linux_amd64.tar.gz"
      sha256 "5f8e91177196df634a41274a74067fe380b6c31a2ffc0c8b48a4bab4b0d60c4c"
    end
  end

  def install
    bin.install "skillforge"
  end

  test do
    system "#{bin}/skillforge", "--help"
  end
end

