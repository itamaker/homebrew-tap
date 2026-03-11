class Datasetlint < Formula
  desc "Audit JSONL datasets for duplicates, empty fields, and train/eval leakage"
  homepage "https://github.com/itamaker/datasetlint"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/datasetlint/releases/download/v0.1.0/datasetlint_0.1.0_darwin_arm64.tar.gz"
      sha256 "693a5a9118d386fbbe96660ca1ae3781d51e3181c884c06359552318e604f301"
    else
      url "https://github.com/itamaker/datasetlint/releases/download/v0.1.0/datasetlint_0.1.0_darwin_amd64.tar.gz"
      sha256 "c9f9347358005f672edf096638a0f0f5be6523bc77cb1d7e693916d4506fa25b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/datasetlint/releases/download/v0.1.0/datasetlint_0.1.0_linux_arm64.tar.gz"
      sha256 "81b20c33ca7c2f4084396cf068f728544c3abe19bf3c40c9c2530bc73cd853bf"
    else
      url "https://github.com/itamaker/datasetlint/releases/download/v0.1.0/datasetlint_0.1.0_linux_amd64.tar.gz"
      sha256 "60daed53dd4b171374a71f763073711527d423db7917034e7bb97be581994f32"
    end
  end

  def install
    bin.install "datasetlint"
  end

  test do
    system "#{bin}/datasetlint", "--help"
  end
end
