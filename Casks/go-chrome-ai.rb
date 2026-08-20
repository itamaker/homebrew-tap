cask "go-chrome-ai" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.8"
  sha256 arm: "8312b054f010d349f51a36eb3dc52cf5dd70730cf14fe7f3c7c89f56346bacf0",
         intel: "c21eaddf1aee4c1eec81fc7d1c403bb8e60c0754bb35e61a290cecb9af953d08"

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
