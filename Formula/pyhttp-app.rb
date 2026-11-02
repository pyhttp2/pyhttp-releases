# The pyhttp CLI/app installed from PyPI into a Homebrew virtualenv.
# Works on macOS (Intel and Apple Silicon) and Linuxbrew. macOS users who want
# the app bundle instead: brew install --cask pyhttp2/pyhttp/pyhttp
class PyhttpApp < Formula
  include Language::Python::Virtualenv

  desc "Local API client and alternative to Postman, with runner, mocks and MCP"
  homepage "https://pyhttp.com"
  url "https://files.pythonhosted.org/packages/94/85/80d6e9ab2025aa1e687f76482a3508fe8ecf4efc5d92269aa658466d77e4/pyhttp_app-2.0.1.tar.gz"
  sha256 "71cd362fe017b0094ef9a8d01ea8ea61c9c716870cffc7829804afaeee242ae4"
  license :cannot_represent # pyhttp Free License 1.1 (LICENSE.md on each release)

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    # install the checksummed sdist; dependencies come from PyPI
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
