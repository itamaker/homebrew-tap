cask "go-chrome-ai" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.2"
  sha256 arm: "df5d5ea963ed011d1295f375184ee2d4c6281999178f134b3d38f9b815d370b6",
         intel: "6e10668a4e9147a75925ddbe6ff679f6c34765841f4c292935b47b9608b2bc1b"

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
