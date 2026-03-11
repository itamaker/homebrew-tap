class Promptdeck < Formula
  desc "Render prompt templates from JSON variables and experiment matrices"
  homepage "https://github.com/itamaker/promptdeck"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/promptdeck/releases/download/v0.1.0/promptdeck_0.1.0_darwin_arm64.tar.gz"
      sha256 "c108a68a232b49d1233ab8dfe63f023d8c3962ff07241d106db7ffd78031cbc1"
    else
      url "https://github.com/itamaker/promptdeck/releases/download/v0.1.0/promptdeck_0.1.0_darwin_amd64.tar.gz"
      sha256 "8a058f26cd9ea1ff95b1677f653fce494ce2877b33fa0e0c012109f493bd9c95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/promptdeck/releases/download/v0.1.0/promptdeck_0.1.0_linux_arm64.tar.gz"
      sha256 "44dc63f8793d4865fd65ce676e12865ff8443bf4d8c7f0e078e6907297588dbf"
    else
      url "https://github.com/itamaker/promptdeck/releases/download/v0.1.0/promptdeck_0.1.0_linux_amd64.tar.gz"
      sha256 "2e92429a82b534042c7b8a51f07a3d7e3f6e26c17a77003714a881b1ddfd0e41"
    end
  end

  def install
    bin.install "promptdeck"
  end

  test do
    system "#{bin}/promptdeck", "--help"
  end
end

