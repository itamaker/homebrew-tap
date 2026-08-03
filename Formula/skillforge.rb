class Skillforge < Formula
  desc "Scaffold OpenClaw-ready skills from a compact JSON spec"
  homepage "https://github.com/itamaker/forge-skill"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/forge-skill/releases/download/v0.3.0/skillforge_0.3.0_darwin_arm64.tar.gz"
      sha256 "3d606340eb1cfaa3e615455f259b4d3a1b7d8eb3caf1297f8d2306b76bfdf4bb"
    else
      url "https://github.com/itamaker/forge-skill/releases/download/v0.3.0/skillforge_0.3.0_darwin_amd64.tar.gz"
      sha256 "29c10087c4d3a6921263f30592426fe1c4e8324282a987b2a9958bac66681753"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/forge-skill/releases/download/v0.3.0/skillforge_0.3.0_linux_arm64.tar.gz"
      sha256 "6496773fb959fc572918e36f2626383b024f619ba46450593ed586a6b49c1091"
    else
      url "https://github.com/itamaker/forge-skill/releases/download/v0.3.0/skillforge_0.3.0_linux_amd64.tar.gz"
      sha256 "d9af2156926b62a088319552a0357cd3c028131813f3650a4c40436ea8a54746"
    end
  end

  def install
    bin.install "skillforge"
  end

  test do
    system "#{bin}/skillforge", "--help"
  end
end
