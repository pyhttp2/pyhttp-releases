cask "pyhttp" do
  version "0.1.7"
  sha256 "2303c42f82eef5dcc6ae00acca66fd1a15e7db5c910cc6ee14cbf79736eec864"

  url "https://github.com/pyhttp2/pyhttp-releases/releases/download/v#{version}/pyhttp-#{version}-macos-arm64.dmg"
  name "pyhttp"
  desc "Local, Postman-like HTTP client with a collection runner"
  homepage "https://github.com/pyhttp2/pyhttp-releases"

  depends_on arch: :arm64
  app "pyhttp.app"

  zap trash: "~/Library/Application Support/pyhttp"
end
