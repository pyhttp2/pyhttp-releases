# The pyhttp CLI/app installed into a Homebrew virtualenv from the release sdist
# (Python dependencies come from PyPI at install time).
# Works on macOS (Intel and Apple Silicon) and Linuxbrew. macOS users who want
# the app bundle instead: brew install --cask pyhttp2/pyhttp/pyhttp
class PyhttpApp < Formula
  include Language::Python::Virtualenv

  desc "Local API client and alternative to Postman, with runner, mocks and MCP"
  homepage "https://pyhttp.com"
  url "https://files.pythonhosted.org/packages/b7/54/d5383d37afdd54edb19ac52839640d858dd09da59dabd1186cc3e2422d70/pyhttp_app-2.0.1.post1.tar.gz"
  sha256 "a35bdc1cf051345908a7051c3192521352e0d910b435495bdc7ee7734081d3f9"
  license :cannot_represent # pyhttp Free License 1.1 (LICENSE.md on each release)

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    # (the venv is created --without-pip, so go through python -m pip)
    system libexec/"bin/python", "-m", "pip", "install", buildpath.to_s
    bin.install_symlink libexec/"bin/pyhttp"
  end

  def caveats
    <<~EOS
      pyhttp is free under the pyhttp Free License 1.1 (LICENSE.md on each
      release at https://github.com/pyhttp2/pyhttp-releases).

      This installs the `pyhttp` command (desktop window, or --server /
      --browser / run modes). On macOS the desktop app bundle is also
      available as a cask:
        brew install --cask pyhttp2/pyhttp/pyhttp
    EOS
  end

  test do
    port = free_port
    pid = spawn bin/"pyhttp", "--server", "--port", port.to_s, "--data-dir", testpath/"data"
    sleep 10
    output = shell_output("curl -fsS http://127.0.0.1:#{port}/api/meta")
    assert_match "\"version\"", output
  ensure
    Process.kill("TERM", pid) if pid
  end
end
