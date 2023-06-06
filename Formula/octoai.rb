# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octoai < Formula
  desc "The CLI for the OctoAI Compute Service."
  homepage "https://octoai.cloud"
  version "0.1.0-rc2"
  license ":cannot_represent"

  depends_on "git"
  depends_on "docker" => :optional
  depends_on "python"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.1.0-rc2/octoai_0.1.0-rc2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c2730ef61831706164dcf6f19e4f69fc036394df19a9ae380f9185e5672b7bc9"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.1.0-rc2/octoai_0.1.0-rc2_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "053f48f8fc2fc76555eae0c4bdb448d4887757a0a0aba8ccbccabd507f296e2b"

      def install
        bin.install "octoai"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.1.0-rc2/octoai_0.1.0-rc2_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7acfa526ab5b55538f94b6e80be561031314652a259a7185536a491efdad3ad0"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.1.0-rc2/octoai_0.1.0-rc2_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6ab50375412d59c06fd4c2a28c10687346cec95d0802040da1fc4b42fbf220f6"

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
