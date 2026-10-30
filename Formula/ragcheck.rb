class Ragcheck < Formula
  desc "Score retrieval runs with offline Precision@k, Recall@k, HitRate@k, and MRR@k"
  homepage "https://github.com/itamaker/ragcheck-skill"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/ragcheck-skill/releases/download/v0.4.0/ragcheck_0.4.0_darwin_arm64.tar.gz"
      sha256 "e1b9488de6ec59ea37b1041ac0c267f2152be31a9a9ba486d8434db6268ff581"
    else
      url "https://github.com/itamaker/ragcheck-skill/releases/download/v0.4.0/ragcheck_0.4.0_darwin_amd64.tar.gz"
      sha256 "97d42b823685e4f221178ae00d6a22e6c2459afed0f5e3bae90fbf07af93fe6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/itamaker/ragcheck-skill/releases/download/v0.4.0/ragcheck_0.4.0_linux_arm64.tar.gz"
      sha256 "b4dd7ea3fd755e0e85a84cff50af94f1bdb36b2d3875cc6cd99993de8de058de"
    else
      url "https://github.com/itamaker/ragcheck-skill/releases/download/v0.4.0/ragcheck_0.4.0_linux_amd64.tar.gz"
      sha256 "d861876fbc1a749092b80e5469c0667b30474c603f458d6d144dcfde3e18b431"
    end
  end

  def install
    bin.install "ragcheck"
  end

  test do
    system "#{bin}/ragcheck", "--help"
  end
end
