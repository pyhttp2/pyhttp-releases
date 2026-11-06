cask "pyhttp" do
  version "2.0.6"
  sha256 "64ecd20924e01b8d7e30c89fb8d45baee0595c5cf6af998962e24f860f44d89b"

  url "https://github.com/pyhttp2/pyhttp/releases/download/v#{version}/pyhttp-#{version}-macos-arm64.dmg"
  name "pyhttp"
  desc "Local API client with a collection runner (alternative to Postman)"
  homepage "https://pyhttp.com"

  depends_on arch: :arm64
  app "pyhttp.app"

  zap trash: "~/Library/Application Support/pyhttp"
end
