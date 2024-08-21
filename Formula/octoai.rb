# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octoai < Formula
  desc "The CLI for the OctoAI Compute Service."
  homepage "https://octoai.cloud"
  version "0.6.1"
  license ":cannot_represent"

  on_macos do
    on_intel do
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.6.1/octoai_0.6.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8caa2eef0b26d8212cc56b0a9a06506b1ae4208a0fca7bb6cd991dd78a08c02d"

      def install
        bin.install "octoai"
      end
    end
    on_arm do
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.6.1/octoai_0.6.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "24326d575d3dcc46a97593c04ae12d2f13c82b97d1ee30bfe57624826b86b1b0"

      def install
        bin.install "octoai"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.6.1/octoai_0.6.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "18476025123149da7713cd1bd874d32bbdc245011c84cef2cff4554ad4dbd399"

        def install
          bin.install "octoai"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.6.1/octoai_0.6.1_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "a2df7ef1351575d941150eba4b0f28d84f1e930af1feffc81124915dd93f906a"

        def install
          bin.install "octoai"
        end
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
