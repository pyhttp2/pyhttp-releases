# pyhttp releases

> **pyhttp has a new home: [github.com/pyhttp2/pyhttp](https://github.com/pyhttp2/pyhttp)** — source code, issues and new [releases](https://github.com/pyhttp2/pyhttp/releases) all live there now. New releases are mirrored here so installs from before the move keep updating, and the Homebrew tap in this repository keeps working. The canonical tap is now [homebrew-pyhttp](https://github.com/pyhttp2/homebrew-pyhttp): `brew install --cask pyhttp2/pyhttp/pyhttp` with no tap step.

Download the latest pyhttp desktop app from the **Releases** page on the right, from [pyhttp.com](https://pyhttp.com), or from the new [releases page](https://github.com/pyhttp2/pyhttp/releases).

pyhttp is a local API client and alternative to Postman: requests, folders, environments, named bodies, tests and scripts, a collection runner, cookies, Postman/OpenAPI/HAR import and more. Everything stays on your machine.

**Free for everyone** under the pyhttp Free License 1.1 (`LICENSE.md` attached to each release): at home or at work, at a company of any size, for any purpose, with no fees, no seats and no registration. By downloading you accept that license. The source code is published on PyPI as [`pyhttp-app`](https://pypi.org/project/pyhttp-app/) so it can be inspected and installed with pip; modified versions may not be distributed.

## Windows 10/11

- **Installer** (recommended): `pyhttp-<version>-windows-x64-setup.exe`. Installs per user, no administrator rights, with a Start menu entry and an uninstaller. Updates install themselves from inside the app.
- **Portable**: `pyhttp-<version>-windows-x64.exe`, one file, no install. It also updates itself in place.

SmartScreen may show "Windows protected your PC" on first launch: click **More info → Run anyway**.

## macOS (Apple Silicon)

**Homebrew** (recommended, updates install themselves from inside the app):

```sh
brew tap pyhttp2/pyhttp https://github.com/pyhttp2/pyhttp-releases
brew install --cask pyhttp2/pyhttp/pyhttp
xattr -dr com.apple.quarantine /Applications/pyhttp.app
```

The last line removes the quarantine flag so macOS does not show the "Apple could not verify" dialog (shown for apps that are not notarized with Apple).

**Manual**: download `pyhttp-<version>-macos-arm64.dmg`, open it and drag pyhttp to Applications. On first launch macOS says it cannot verify the app: click **Done** (not "Move to Trash"), open **System Settings → Privacy & Security**, scroll to the message about pyhttp and click **Open Anyway**. Or run the `xattr` command above.

## Any OS with Python 3.10+ (pip or Homebrew formula)

```sh
pip install pyhttp-app        # or: pipx install pyhttp-app
pyhttp
```

Or through Homebrew (macOS Intel/ARM and Linuxbrew; installs the `pyhttp` command, not the app bundle):

```sh
brew tap pyhttp2/pyhttp https://github.com/pyhttp2/pyhttp-releases
brew install pyhttp2/pyhttp/pyhttp-app
```

On Linux, install the GTK webview bindings first or use `pyhttp --browser`.

## Ubuntu 22.04+ / Debian 12+

```sh
sudo apt install ./pyhttp-<version>-linux-amd64.deb
```

The package uses your distribution's GTK and WebKitGTK (pulled in as dependencies), adds `pyhttp` to the PATH and an entry to the app menu. Other distributions can run pyhttp from source with Python 3.10+ and the GTK webview bindings.

## Updates

pyhttp checks this repository for a newer release at start (and on **Check now** in Settings → About) and shows an **Update** button. The Windows installer, the portable `.exe` and a Homebrew install download the new version, verify it against `SHA256SUMS.txt` and install it, then pyhttp restarts. A `.dmg` or `.deb` install gets the download and the exact command to run. Your data (`%APPDATA%\pyhttp`, `~/Library/Application Support/pyhttp`, `~/.local/share/pyhttp`) is kept across updates.

`SHA256SUMS.txt` on each release lists the checksums of all files.

## License

pyhttp Free License 1.1: see `LICENSE.md` on each release. Bundled open-source components are listed in `THIRD-PARTY-NOTICES.md`. Questions: dev@pyhttp.com.

Copyright (c) 2026 pyhttp Dev Team. All rights reserved.

Postman is a trademark of Postman, Inc. pyhttp is an independent project and is not affiliated with or endorsed by Postman, Inc.
