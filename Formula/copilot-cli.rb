# typed: false
# frozen_string_literal: true

class CopilotCli < Formula
  desc "APROINT Copilot CLI"
  homepage "https://github.com/aproint/copilot-cli"
  version "1.35.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aproint/copilot-cli/releases/download/v1.35.0/copilot-darwin-arm64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "eb8fd26c86759b014fc3bb45ef17e7fb1acee84c20c9a135d95cf9d547d90fe3"
    end

    on_intel do
      url "https://github.com/aproint/copilot-cli/releases/download/v1.35.0/copilot-darwin-amd64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "b8edf176aa65441573cf2741fe27cf6938de104ef4fda04b6786a241ebec019a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aproint/copilot-cli/releases/download/v1.35.0/copilot-linux-arm64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "dd4fccc9cda938f06f6dcd754c8d4ed123bdba90626d40a4bf9584acd45c810e"
    end

    on_intel do
      url "https://github.com/aproint/copilot-cli/releases/download/v1.35.0/copilot-linux-amd64",
          using: NoUnzipCurlDownloadStrategy
      sha256 "8e38d970e7f2fb62f975ba3bde09fb28f38e20d29019e7a0588f314ff18032e9"
    end
  end

  def install
    bin.install cached_download => "copilot"
  end

  test do
    system "#{bin}/copilot", "--help"
  end
end
