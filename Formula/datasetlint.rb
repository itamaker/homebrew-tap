class Datasetlint < Formula
  desc "Audit JSONL datasets for duplicates, empty fields, and train/eval leakage"
  homepage "https://github.com/itamaker/datasetlint-skill"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/datasetlint-skill/releases/download/v0.3.0/datasetlint_0.3.0_darwin_arm64.tar.gz"
      sha256 "df0940350544564b1d156e861a6067606c54aff6c526e16688aa85f02faf6b61"
    else
      url "https://github.com/itamaker/datasetlint-skill/releases/download/v0.3.0/datasetlint_0.3.0_darwin_amd64.tar.gz"
      sha256 "5557acf1d082d30472605eabc4da46fb2a8e2f67b3fb0b6ac1e46195eebcbf5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/datasetlint-skill/releases/download/v0.3.0/datasetlint_0.3.0_linux_arm64.tar.gz"
      sha256 "e352be0fa5133985da4e8c2bc081c848ade7f6a02595e65da06b3756a2c7b902"
    else
      url "https://github.com/itamaker/datasetlint-skill/releases/download/v0.3.0/datasetlint_0.3.0_linux_amd64.tar.gz"
      sha256 "1ad69e6b3fb978f3d8270d8a2b2ae1f3868ce11e95d6d7e18f1294c2b797cb17"
    end
  end

  def install
    bin.install "datasetlint"
  end

  test do
    system "#{bin}/datasetlint", "--help"
  end
end
