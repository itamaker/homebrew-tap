cask "go-chrome-ai" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.0"
  sha256 arm: "f7b54c875ea0000b54860c67d39ddf74b0a033b3353a16c942274e24d9083445",
         intel: "5d5fe38e8c86fb9640577278dc536b4dfd8b15ebbe1e0fd820675e1e17243e58"

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
