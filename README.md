# pyhttp releases

Download the latest pyhttp desktop app from the **Releases** page on the right.

pyhttp is a local, Postman-like HTTP client: requests, folders, environments, named bodies, tests, a collection runner, cookies, Postman import/export, and more. Everything stays on your machine.

## Windows 10/11

Download `pyhttp-<version>-windows-x64.exe` and run it (one file, no install). SmartScreen may show "Windows protected your PC": click **More info → Run anyway**.

## macOS (Apple Silicon)

**Homebrew** (recommended):

```sh
brew tap pyhttp2/pyhttp https://github.com/pyhttp2/pyhttp-releases
brew install --cask --no-quarantine pyhttp2/pyhttp/pyhttp
```

`--no-quarantine` skips the "Apple could not verify" dialog that macOS shows for apps that are not notarized with Apple. Later updates: `brew upgrade --cask pyhttp`.

**Manual**: download `pyhttp-<version>-macos-arm64.dmg`, open it and drag pyhttp to Applications. On first launch macOS says it cannot verify the app:

1. Click **Done** (not "Move to Trash").
2. Open **System Settings → Privacy & Security**, scroll down to the message about pyhttp and click **Open Anyway**, then confirm.

Or remove the quarantine flag in Terminal: `xattr -dr com.apple.quarantine /Applications/pyhttp.app`

## License

Free for individuals and for schools (teaching and learning) under the pyhttp Personal and Education License 1.0.
Companies, government bodies, research organizations and nonprofits need a commercial license: see `COMMERCIAL-LICENSE.md` attached to each release, or email dev@pyhttp.com.
By downloading you accept the `EULA.md` attached to each release.

Copyright (c) 2026 Vishvendra Singh. All rights reserved.
