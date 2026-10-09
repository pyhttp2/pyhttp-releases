cask "pyhttp" do
  version "0.1.0"
  sha256 "c81fbaa15579a627d1c9f6d1d467952d7130010805b95ca788e96ec25f1a0e58"

  url "https://github.com/pyhttp2/pyhttp-releases/releases/download/v#{version}/pyhttp-#{version}-macos-arm64.dmg"
  name "pyhttp"
  desc "Local, Postman-like HTTP client with a collection runner"
  homepage "https://github.com/pyhttp2/pyhttp-releases"

  depends_on arch: :arm64
  app "pyhttp.app"

  zap trash: "~/Library/Application Support/pyhttp"
end
