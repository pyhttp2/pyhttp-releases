cask "pyhttp" do
  version "0.1.0"
  sha256 "b0ac3e1d7647d566705c7c0c5028890a6b4751f9707f97fec01c9e52ff9f6db3"

  url "https://github.com/pyhttp2/pyhttp-releases/releases/download/v#{version}/pyhttp-#{version}-macos-arm64.dmg"
  name "pyhttp"
  desc "Local, Postman-like HTTP client with a collection runner"
  homepage "https://github.com/pyhttp2/pyhttp-releases"

  depends_on arch: :arm64
  app "pyhttp.app"

  zap trash: "~/Library/Application Support/pyhttp"
end
