# pyhttp releases

Download the latest pyhttp desktop app from the **Releases** page on the right, or from [pyhttp.com](https://pyhttp.com).

pyhttp is a local, Postman-like HTTP client: requests, folders, environments, named bodies, tests and scripts, a collection runner, cookies, Postman/OpenAPI/HAR import and more. Everything stays on your machine.

**Free for everyone** under the pyhttp Free License 1.0 (`LICENSE.md` attached to each release): at home or at work, at a company of any size, for any purpose, with no fees, no seats and no registration. By downloading you accept that license. The source code is not published.

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

## Ubuntu 22.04+ / Debian 12+

```sh
sudo apt install ./pyhttp-<version>-linux-amd64.deb
```

The package uses your distribution's GTK and WebKitGTK (pulled in as dependencies), adds `pyhttp` to the PATH and an entry to the app menu. Other distributions can run pyhttp from source with Python 3.10+ and the GTK webview bindings.

## Updates

pyhttp checks this repository for a newer release at start (and on **Check now** in Settings → About) and shows an **Update** button. The Windows installer, the portable `.exe` and a Homebrew install download the new version, verify it against `SHA256SUMS.txt` and install it, then pyhttp restarts. A `.dmg` or `.deb` install gets the download and the exact command to run. Your data (`%APPDATA%\pyhttp`, `~/Library/Application Support/pyhttp`, `~/.local/share/pyhttp`) is kept across updates.

`SHA256SUMS.txt` on each release lists the checksums of all files.

## License

pyhttp Free License 1.0: see `LICENSE.md` on each release. Bundled open-source components are listed in `THIRD-PARTY-NOTICES.md`. Questions: dev@pyhttp.com.

Copyright (c) 2026 Vishvendra Singh. All rights reserved.
