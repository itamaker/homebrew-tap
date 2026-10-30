class Promptdeck < Formula
  desc "Render prompt templates from JSON variables and experiment matrices"
  homepage "https://github.com/itamaker/promptdeck-skill"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/promptdeck-skill/releases/download/v0.4.0/promptdeck_0.4.0_darwin_arm64.tar.gz"
      sha256 "a360d7f769d6ee3f27bc1ed1729cf3c902b2eee0c26278f3513fbdfdbc200174"
    else
      url "https://github.com/itamaker/promptdeck-skill/releases/download/v0.4.0/promptdeck_0.4.0_darwin_amd64.tar.gz"
      sha256 "234ad1bcdb957cfcfc3497dd6b3bcb49b9f3dbbf28e0d68d519509fd1c7ddcdc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/promptdeck-skill/releases/download/v0.4.0/promptdeck_0.4.0_linux_arm64.tar.gz"
      sha256 "abd9f1b334ce5075ebf6d4f931a7cb68e916e05b218c9afe6991fc672effe4d1"
    else
      url "https://github.com/itamaker/promptdeck-skill/releases/download/v0.4.0/promptdeck_0.4.0_linux_amd64.tar.gz"
      sha256 "270cb0e3c571cc203204f9d890be1fa219d9c026044ad381b2f65054f2e63d16"
    end
  end

  def install
    bin.install "promptdeck"
  end

  test do
    system "#{bin}/promptdeck", "--help"
  end
end
