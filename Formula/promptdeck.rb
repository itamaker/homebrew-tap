class Promptdeck < Formula
  desc "Render prompt templates from JSON variables and experiment matrices"
  homepage "https://github.com/itamaker/promptdeck"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/promptdeck/releases/download/v0.2.0/promptdeck_0.2.0_darwin_arm64.tar.gz"
      sha256 "e2f5156e5d7f88e29fc1233de34ed23efb83fbe187e825e66e708fc0f83345f4"
    else
      url "https://github.com/itamaker/promptdeck/releases/download/v0.2.0/promptdeck_0.2.0_darwin_amd64.tar.gz"
      sha256 "de8aec4a343a70419222557d4f207a1dcb84712126c44936721fcbfa23f4ccea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/promptdeck/releases/download/v0.2.0/promptdeck_0.2.0_linux_arm64.tar.gz"
      sha256 "2ac3df55267269c55ae09f2098e2e2e60a2685e993dce08e40d10cff2093a571"
    else
      url "https://github.com/itamaker/promptdeck/releases/download/v0.2.0/promptdeck_0.2.0_linux_amd64.tar.gz"
      sha256 "f11ae530a545ce9de10b9378e913a8e402b5edd9c9b1f521faa10bf56e84381c"
    end
  end

  def install
    bin.install "promptdeck"
  end

  test do
    system "#{bin}/promptdeck", "--help"
  end
end
