cask "go-chrome-ai" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.6"
  sha256 arm: "26845780dafadab855fe224f7c7110793a2dd6822d5580eada31ba5e26a9f821",
         intel: "feebab06dad95dbf914d428635ee5624268dfe5b53f5bbd1c20955d997da9e77"

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
