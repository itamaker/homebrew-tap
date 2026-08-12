cask "go-chrome-ai" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.7"
  sha256 arm: "b3fbef08c3f0d9481e05ffe06b68706ddbb3defe61f887a5cf80db5f2d6a7ae7",
         intel: "0a4379fbbda33d08a0d87447d3ecf3d877c405f958baf0840d4563e1cabcfbab"

  url "https://github.com/itamaker/go-chrome-ai/releases/download/v#{version}/go-chrome-ai_#{version}_darwin_#{arch}.tar.gz"
  name "go-chrome-ai"
  desc "Patch Chrome Local State to enable Ask Gemini and other AI features"
  homepage "https://github.com/itamaker/go-chrome-ai"

  binary "go-chrome-ai"

  livecheck do
    url :url
    strategy :github_latest
  end
end
