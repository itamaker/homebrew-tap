cask "go-chrome-ai" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.4"
  sha256 arm: "86863eb9daae0748e894cefb0734ba9e45fd386895cbab947dd8f5b53623b0a6",
         intel: "788fdc4e99d000423b96b56dcd7603839f74e9023fb83d23600b3714f14269d8"

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
