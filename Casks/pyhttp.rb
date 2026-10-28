cask "pyhttp" do
  version "0.1.16"
  sha256 "b44eab6d4347eda82e9f279352551232b3f5bfaa89b62a63f957429889c50eba"

  url "https://github.com/pyhttp2/pyhttp-releases/releases/download/v#{version}/pyhttp-#{version}-macos-arm64.dmg"
  name "pyhttp"
  desc "Local, Postman-like HTTP client with a collection runner"
  homepage "https://github.com/pyhttp2/pyhttp-releases"

  depends_on arch: :arm64
  app "pyhttp.app"

  zap trash: "~/Library/Application Support/pyhttp"
end
