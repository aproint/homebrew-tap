# typed: false
# frozen_string_literal: true

class CopilotCli < Formula
  desc "APROINT Copilot CLI"
  homepage "https://github.com/aproint/copilot-cli"
  version "1.0.0-rc.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aproint/copilot-cli/releases/download/v1.0.0-rc.1/copilot-darwin-arm64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "5213a10ea9f90a2f3ad315870ccd33c43b419d02d31623b7fc25b3aead2e0a44"
    end

    on_intel do
      url "https://github.com/aproint/copilot-cli/releases/download/v1.0.0-rc.1/copilot-darwin-amd64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "0d05e353448828104a9c8f2e9c59a7b18503b55c9d92a91864c2c3a477a1d056"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aproint/copilot-cli/releases/download/v1.0.0-rc.1/copilot-linux-arm64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "09be45613c5883165e28fc7b629c0bd4a3222339a5928cd8669d40650872bdc2"
    end

    on_intel do
      url "https://github.com/aproint/copilot-cli/releases/download/v1.0.0-rc.1/copilot-linux-amd64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "b9527155fcd5e2be0871c27cf5b14fd4d15ca4b7866db54d081896d729e756ec"
    end
  end

  def install
    bin.install cached_download => "copilot"
  end

  test do
    system "#{bin}/copilot", "--help"
  end
end
