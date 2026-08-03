class Promptdeck < Formula
  desc "Render prompt templates from JSON variables and experiment matrices"
  homepage "https://github.com/itamaker/promptdeck-skill"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/promptdeck-skill/releases/download/v0.3.0/promptdeck_0.3.0_darwin_arm64.tar.gz"
      sha256 "8a37fff1a8fdf40799586941036e5fa6e0dc6f1ff3e5cc32168002a46dbe9804"
    else
      url "https://github.com/itamaker/promptdeck-skill/releases/download/v0.3.0/promptdeck_0.3.0_darwin_amd64.tar.gz"
      sha256 "9dd9d54d51b52a33a07dcbdd4015a3e34b3ab03a373d5878a0b7d2d685b215db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/promptdeck-skill/releases/download/v0.3.0/promptdeck_0.3.0_linux_arm64.tar.gz"
      sha256 "7224b27f5b02ef678a468c4d3139ac9efb4ff9fa6a580a7a7f65ce6d0ae52ee3"
    else
      url "https://github.com/itamaker/promptdeck-skill/releases/download/v0.3.0/promptdeck_0.3.0_linux_amd64.tar.gz"
      sha256 "94715666360c2e8cbd15192d08a55269e6136f643907c3480d82455c7cdcc1ac"
    end
  end

  def install
    bin.install "promptdeck"
  end

  test do
    system "#{bin}/promptdeck", "--help"
  end
end
