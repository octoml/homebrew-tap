# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octoai < Formula
  desc "The CLI for the OctoAI Compute Service."
  homepage "https://octoai.cloud"
  version "0.5.8"
  license ":cannot_represent"

  on_macos do
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.5.8/octoai_0.5.8_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9e2cd62a6e6e6f46d38908599f45af5ad41d788f0d4dcad3e8ebced6dac57f3c"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.arm?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.5.8/octoai_0.5.8_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "324b98cc74c9f478949fef36b132aa3d07c691206dd7f586043aa99928c914e4"

      def install
        bin.install "octoai"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.5.8/octoai_0.5.8_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5caf46c5913a6bd86b82b645476bb9b3fa50c24a9e6b1ec235b1319bcb93729f"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.5.8/octoai_0.5.8_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0eba2fdc6e68487ac6013f299c7047774e0e41c930d7c40ec1b97a84a8d4201d"

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
