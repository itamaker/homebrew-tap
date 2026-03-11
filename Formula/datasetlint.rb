class Datasetlint < Formula
  desc "Audit JSONL datasets for duplicates, empty fields, and train/eval leakage"
  homepage "https://github.com/itamaker/datasetlint"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/datasetlint/releases/download/v0.1.1/datasetlint_0.1.1_darwin_arm64.tar.gz"
      sha256 "e1f72188469bd05aa516aa17ed56689f58107eec48e30644e109deffdde7fc86"
    else
      url "https://github.com/itamaker/datasetlint/releases/download/v0.1.1/datasetlint_0.1.1_darwin_amd64.tar.gz"
      sha256 "8f4cbdc20eb075f6a7e68580d76a7a1e35b84e449c8c280887c6f6d16e6722bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/datasetlint/releases/download/v0.1.1/datasetlint_0.1.1_linux_arm64.tar.gz"
      sha256 "d948ca61e3b2c6307d19f5ebf2ebc3475247a2477613a5fd47f76fea5fd46403"
    else
      url "https://github.com/itamaker/datasetlint/releases/download/v0.1.1/datasetlint_0.1.1_linux_amd64.tar.gz"
      sha256 "9ff84a361a0989f20c296ed58223d69340c3876c9690f6a05814b0970d279ae1"
    end
  end

  def install
    bin.install "datasetlint"
  end

  test do
    system "#{bin}/datasetlint", "--help"
  end
end
