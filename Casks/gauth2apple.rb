cask "gauth2apple" do
  version "0.1.0"
  sha256 "b752336c331b4ebba2848ec6a6dbea18691cc97b6339368ea83862248ebe67fa"

  url "https://github.com/itamaker/gauth2apple/releases/download/v#{version}/gauth2apple-macos-arm64.zip"
  name "gauth2apple"
  desc "Split a Google Authenticator export QR into individual otpauth:// QR codes for Apple Passwords"
  homepage "https://github.com/itamaker/gauth2apple"

  depends_on arch: :arm64

  app "gauth2apple.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
