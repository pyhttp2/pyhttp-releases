cask "pyhttp" do
  version "0.1.8"
  sha256 "9841c6e493d8d13ce0b9203b1d4a6475cefb6886fa4ea87dfd5db9f88fb615aa"

  url "https://github.com/pyhttp2/pyhttp-releases/releases/download/v#{version}/pyhttp-#{version}-macos-arm64.dmg"
  name "pyhttp"
  desc "Local, Postman-like HTTP client with a collection runner"
  homepage "https://github.com/pyhttp2/pyhttp-releases"

  depends_on arch: :arm64
  app "pyhttp.app"

  zap trash: "~/Library/Application Support/pyhttp"
end
