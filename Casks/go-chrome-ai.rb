cask "go-chrome-ai" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.5"
  sha256 arm: "34b0be6c335f7e9aa80c20927e0c28424a91d22b141c67b3c1aaf3ec96496bf8",
         intel: "ddf86f9db00bacd034b53d3cdfa5530adcef45db5ec91c7f6a61d6343440b0e5"

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
