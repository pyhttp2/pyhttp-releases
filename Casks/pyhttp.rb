cask "pyhttp" do
  version "2.0.6"
  sha256 "1ab72bf226705a63bc176751a2139eba61537d9ea1a49c96cb9d4648a7b97a47"

  url "https://github.com/pyhttp2/pyhttp/releases/download/v#{version}/pyhttp-#{version}-macos-arm64.dmg"
  name "pyhttp"
  desc "Local API client with a collection runner (alternative to Postman)"
  homepage "https://pyhttp.com"

  depends_on arch: :arm64
  app "pyhttp.app"

  zap trash: "~/Library/Application Support/pyhttp"
end
