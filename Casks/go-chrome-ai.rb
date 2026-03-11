cask "go-chrome-ai" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.3"
  sha256 arm: "dee45018a65de63b6f2ab2a3eb233dacce2d874ddf676b39334232dcbba18612",
         intel: "04f84b007c0d48ca0e042070059e6cbcbfb424a83ca52a2457c923237187850c"

  url "https://github.com/itamaker/go-chrome-ai/releases/download/v#{version}/go-chrome-ai-darwin-#{arch}.tar.gz"
  name "go-chrome-ai"
  desc "Patch Chrome Local State to enable Ask Gemini and other AI features"
  homepage "https://github.com/itamaker/go-chrome-ai"

  binary "go-chrome-ai"

  livecheck do
    url :url
    strategy :github_latest
  end
end
