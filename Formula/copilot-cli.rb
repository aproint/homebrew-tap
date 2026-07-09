# typed: false
# frozen_string_literal: true

class CopilotCli < Formula
  desc "APROINT Copilot CLI"
  homepage "https://github.com/aproint/copilot-cli"
  version "0.0.0-rc.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aproint/copilot-cli/releases/download/v0.0.0-rc.1/copilot-darwin-arm64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "0267e98ab6d31f7205d6907e3d9617724e77ccb51169bf287db1bdd0a677c978"
    end

    on_intel do
      url "https://github.com/aproint/copilot-cli/releases/download/v0.0.0-rc.1/copilot-darwin-amd64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "b4d510c81ccc3026ff4269663f6db0e63d4124145f400bfc73f5426e281720ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aproint/copilot-cli/releases/download/v0.0.0-rc.1/copilot-linux-arm64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "a1194eb2cbe63da7a668070ab319ea3aadd537f00a31a923009181c6ca9dba41"
    end

    on_intel do
      url "https://github.com/aproint/copilot-cli/releases/download/v0.0.0-rc.1/copilot-linux-amd64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "ae527fc0808d474f108fb44148decd96158d20f34f2e9e5b9ffee63c8763eb73"
    end
  end

  def install
    bin.install cached_download => "copilot"
  end

  test do
    system "#{bin}/copilot", "--help"
  end
end
