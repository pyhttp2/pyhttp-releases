cask "pyhttp" do
  version "0.1.5"
  sha256 "cbc64028e92eacf7fb856c933d32c47f5edb37a8ed2ea99f7cf813dd0f9678b1"

  url "https://github.com/pyhttp2/pyhttp-releases/releases/download/v#{version}/pyhttp-#{version}-macos-arm64.dmg"
  name "pyhttp"
  desc "Local, Postman-like HTTP client with a collection runner"
  homepage "https://github.com/pyhttp2/pyhttp-releases"

  depends_on arch: :arm64
  app "pyhttp.app"

  zap trash: "~/Library/Application Support/pyhttp"
end
