# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octoai < Formula
  desc "The CLI for the OctoAI Compute Service."
  homepage "https://octoai.cloud"
  version "0.5.26"
  license ":cannot_represent"

  on_macos do
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.5.26/octoai_0.5.26_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f8002ddb0ad3023edcc6584307cb4541ada544bac3b46bbd0f9eb52461a69d8a"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.arm?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.5.26/octoai_0.5.26_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cb1b829a30405acc9ec386c58ac2cdcb6d327e63c0ba3162b4993bdf9ac88233"

      def install
        bin.install "octoai"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.5.26/octoai_0.5.26_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7dc073a9f7caa469b95db2bf0938720a6fdabb5b132202e4ff358f9cdb415211"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.5.26/octoai_0.5.26_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2e20ac4727d1af506f62fd4c1f2a5b98c9cbd64840e263a0455ec1b2ed22b41f"

      def install
        bin.install "octoai"
      end
    end
  end

  def caveats
    <<~EOS
      Docker is required for operation but not required by the formula.
    EOS
  end

  test do
    system "#{bin}/octoai --version"
  end
end
