cask "pyhttp" do
  version "2.0.7"
  sha256 "fb3eb7f2dc61f2efac2d24aaccc229df1f850752fcf8374515b83092d225b234"

  url "https://github.com/pyhttp2/pyhttp/releases/download/v#{version}/pyhttp-#{version}-macos-arm64.dmg"
  name "pyhttp"
  desc "Local API client with a collection runner (alternative to Postman)"
  homepage "https://pyhttp.com"

  depends_on arch: :arm64
  app "pyhttp.app"

  zap trash: "~/Library/Application Support/pyhttp"
end
