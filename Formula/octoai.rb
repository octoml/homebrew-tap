# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octoai < Formula
  desc "The CLI for the OctoAI Compute Service."
  homepage "https://octoai.cloud"
  version "0.4.2"
  license ":cannot_represent"

  depends_on "docker" => :optional
  depends_on "git"
  depends_on "python"

  on_macos do
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.4.2/octoai_0.4.2_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "163218572b1d2366b4719136dcd20e4519b0765b71f006288f2e869377b7f1f5"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.arm?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.4.2/octoai_0.4.2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "84c093c96d68688c2e4bcb8f64cea06e169a0b8001805e7ff145f07b07255c0a"

      def install
        bin.install "octoai"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.4.2/octoai_0.4.2_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "06f482733c6c6e490b327b392e9ee371ae600e6a7fa910d8c30ded6d8d651088"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.4.2/octoai_0.4.2_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3e202c8bfb649e0d8319b13170e4f6a1625c6577303cc8962ca25398c0c93213"

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
