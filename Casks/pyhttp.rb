cask "pyhttp" do
  version "2.0.8"
  sha256 "a03eee35984ada18bf20a6d339b6b33ce4b51710c4fecf7e5f092b1afb7ecf4e"

  url "https://github.com/pyhttp2/pyhttp/releases/download/v#{version}/pyhttp-#{version}-macos-arm64.dmg"
  name "pyhttp"
  desc "Local API client with a collection runner (alternative to Postman)"
  homepage "https://pyhttp.com"

  depends_on arch: :arm64
  app "pyhttp.app"

  zap trash: "~/Library/Application Support/pyhttp"
end
