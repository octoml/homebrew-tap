# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octoai < Formula
  desc "The CLI for the OctoAI Compute Service."
  homepage "https://octoai.cloud"
  version "0.1.3"
  license ":cannot_represent"

  depends_on "docker" => :optional
  depends_on "git"
  depends_on "python"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.1.3/octoai_0.1.3_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2469dd4d4ae28fdd88eef536cdf33ab873d28ffc8a9bb92e39ece6d6d653e750"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.1.3/octoai_0.1.3_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d328d31a1f166b2cb4aaa48afc218bbafdd97ec2bf8cf73af64c32db8cfc33c0"

      def install
        bin.install "octoai"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.1.3/octoai_0.1.3_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3ed77cca9ca3ddfed6ad6d94e7ba73cd44dd131bd92537dd3e3a6fe55944ca68"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.1.3/octoai_0.1.3_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8aa056df3d011003e4d7b6e01b848b4fd43c25740f96fa79625d12ed0c71c4c5"

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
