class Datasetlint < Formula
  desc "Audit JSONL datasets for duplicates, empty fields, and train/eval leakage"
  homepage "https://github.com/itamaker/datasetlint-skill"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/datasetlint-skill/releases/download/v0.4.0/datasetlint_0.4.0_darwin_arm64.tar.gz"
      sha256 "ae29dcc289b88f6fef403c1ba020c89b7ece60c701471ff180b35bf6d79c6de2"
    else
      url "https://github.com/itamaker/datasetlint-skill/releases/download/v0.4.0/datasetlint_0.4.0_darwin_amd64.tar.gz"
      sha256 "ee8114d042d0b4eb0859252a276161afe50f7f815751a85ef88ff295d0e70f05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/datasetlint-skill/releases/download/v0.4.0/datasetlint_0.4.0_linux_arm64.tar.gz"
      sha256 "e18624560610111259c14c1674496ac3df60ca170bc6408dd04b9d547d3c94e4"
    else
      url "https://github.com/itamaker/datasetlint-skill/releases/download/v0.4.0/datasetlint_0.4.0_linux_amd64.tar.gz"
      sha256 "306f474bd29ec818702e734d9b0b8712d0bf1b43c0b27ef330e448ed45c9bb0f"
    end
  end

  def install
    bin.install "datasetlint"
  end

  test do
    system "#{bin}/datasetlint", "--help"
  end
end
