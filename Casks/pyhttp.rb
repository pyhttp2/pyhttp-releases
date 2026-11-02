cask "pyhttp" do
  version "2.0.2"
  sha256 "9febabb6a83789df9cddb106d2a0176cdd223ec2f0abe7985a3bf44aba262d42"

  url "https://github.com/pyhttp2/pyhttp/releases/download/v#{version}/pyhttp-#{version}-macos-arm64.dmg"
  name "pyhttp"
  desc "Local API client with a collection runner (alternative to Postman)"
  homepage "https://pyhttp.com"

  depends_on arch: :arm64
  app "pyhttp.app"

  zap trash: "~/Library/Application Support/pyhttp"
end
