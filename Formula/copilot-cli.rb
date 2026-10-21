# typed: false
# frozen_string_literal: true

class CopilotCli < Formula
  desc "APROINT Copilot CLI"
  homepage "https://github.com/aproint/copilot-cli"
  version "1.0.0-rc.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aproint/copilot-cli/releases/download/v1.0.0-rc.2/copilot-darwin-arm64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "855210ce8ab76c9a84cdee50a0b86036d51cd775cdd9615d1acfdb7f9a426737"
    end

    on_intel do
      url "https://github.com/aproint/copilot-cli/releases/download/v1.0.0-rc.2/copilot-darwin-amd64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "1dcb41869d0b6249d8c1dd056500b66ab2576fdcb4e142f02e137b5a4d7428c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aproint/copilot-cli/releases/download/v1.0.0-rc.2/copilot-linux-arm64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "d2c96a14e48a1a4c66d49a8646088ee277709a941102616482bb730c1b718746"
    end

    on_intel do
      url "https://github.com/aproint/copilot-cli/releases/download/v1.0.0-rc.2/copilot-linux-amd64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "f1e19f22896ba89699955b157ed11d15b6f6e054dfd050c0a2a0bf7d3334fa3d"
    end
  end

  def install
    bin.install cached_download => "copilot"
  end

  test do
    system "#{bin}/copilot", "--help"
  end
end
