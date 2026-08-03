class Datasetlint < Formula
  desc "Audit JSONL datasets for duplicates, empty fields, and train/eval leakage"
  homepage "https://github.com/itamaker/datasetlint-skill"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/datasetlint-skill/releases/download/v0.2.0/datasetlint_0.2.0_darwin_arm64.tar.gz"
      sha256 "fa95ffa766107f629e6adb6c5982926e8eb4be2d0b875522b63878323da8c4bf"
    else
      url "https://github.com/itamaker/datasetlint-skill/releases/download/v0.2.0/datasetlint_0.2.0_darwin_amd64.tar.gz"
      sha256 "95e611cb60d8ec040320729a1b3b849d039e9a63489b4efc7dd06e8c9a3ec3cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/datasetlint-skill/releases/download/v0.2.0/datasetlint_0.2.0_linux_arm64.tar.gz"
      sha256 "369235c23d2d6e18adf3594aaee84faaa0b292f9e3cb0a36a486736fd48e5e58"
    else
      url "https://github.com/itamaker/datasetlint-skill/releases/download/v0.2.0/datasetlint_0.2.0_linux_amd64.tar.gz"
      sha256 "dae02e47795e5351fa87d0811c46bdc6da54c34d9a99a462c9409e24195a1c99"
    end
  end

  def install
    bin.install "datasetlint"
  end

  test do
    system "#{bin}/datasetlint", "--help"
  end
end
