cask "pyhttp" do
  version "0.1.6"
  sha256 "cf3bdc3263ef60e5e7b9c41c082b77f9989929f8a2b8b458fbc43d1aea789f8b"

  url "https://github.com/pyhttp2/pyhttp-releases/releases/download/v#{version}/pyhttp-#{version}-macos-arm64.dmg"
  name "pyhttp"
  desc "Local, Postman-like HTTP client with a collection runner"
  homepage "https://github.com/pyhttp2/pyhttp-releases"

  depends_on arch: :arm64
  app "pyhttp.app"

  zap trash: "~/Library/Application Support/pyhttp"
end
