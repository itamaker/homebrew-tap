class Runlens < Formula
  desc "Inspect agent and tool JSONL traces for latency, failure rate, and token usage"
  homepage "https://github.com/itamaker/runlens-skill"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/runlens-skill/releases/download/v0.3.0/runlens_0.3.0_darwin_arm64.tar.gz"
      sha256 "e4997384166141e498166245ac316b6fa8a230e068020055ff0c5171b8bbeb82"
    else
      url "https://github.com/itamaker/runlens-skill/releases/download/v0.3.0/runlens_0.3.0_darwin_amd64.tar.gz"
      sha256 "4276c986f5c554bdd932e27036c09b6a14bd5897d6452a32407406ad622aa328"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/runlens-skill/releases/download/v0.3.0/runlens_0.3.0_linux_arm64.tar.gz"
      sha256 "d4ca9597c2161bd0ee97f9a309bb32c27439e52c37f1725160e291514b5ef17c"
    else
      url "https://github.com/itamaker/runlens-skill/releases/download/v0.3.0/runlens_0.3.0_linux_amd64.tar.gz"
      sha256 "63c854b12f93256553dc5389a9e9abefacc658598fc7f074589934e52b048d9f"
    end
  end

  def install
    bin.install "runlens"
  end

  test do
    system "#{bin}/runlens", "--help"
  end
end
