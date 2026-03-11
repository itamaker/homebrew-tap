class Promptdeck < Formula
  desc "Render prompt templates from JSON variables and experiment matrices"
  homepage "https://github.com/itamaker/promptdeck"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/promptdeck/releases/download/v0.1.1/promptdeck_0.1.1_darwin_arm64.tar.gz"
      sha256 "28c4ed3261f590014042b046313cb1f415fef8575f8592cea2b6904469c0a2cc"
    else
      url "https://github.com/itamaker/promptdeck/releases/download/v0.1.1/promptdeck_0.1.1_darwin_amd64.tar.gz"
      sha256 "9200fda065f5054d89f1bdbeeb1f35f72f586ac1d5166d6fec42fe47c401a62d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/promptdeck/releases/download/v0.1.1/promptdeck_0.1.1_linux_arm64.tar.gz"
      sha256 "bb8a4281cc6e401f6476f374f82f463f773fb2c93b3d331333fee127f4ff6e88"
    else
      url "https://github.com/itamaker/promptdeck/releases/download/v0.1.1/promptdeck_0.1.1_linux_amd64.tar.gz"
      sha256 "8b97f8f9ccb2811dcd1b185c800d24a674c1b6afe46d0638f664c23d7f5ae966"
    end
  end

  def install
    bin.install "promptdeck"
  end

  test do
    system "#{bin}/promptdeck", "--help"
  end
end
