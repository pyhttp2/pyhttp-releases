cask "pyhttp" do
  version "0.1.4"
  sha256 "34e4b6fa9a036f2b75d1ebe7c2c9976de34ea8a512f5bf03cea7fd51fa0aaf91"

  url "https://github.com/pyhttp2/pyhttp-releases/releases/download/v#{version}/pyhttp-#{version}-macos-arm64.dmg"
  name "pyhttp"
  desc "Local, Postman-like HTTP client with a collection runner"
  homepage "https://github.com/pyhttp2/pyhttp-releases"

  depends_on arch: :arm64
  app "pyhttp.app"

  zap trash: "~/Library/Application Support/pyhttp"
end
