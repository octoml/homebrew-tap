# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octoai < Formula
  desc "The CLI for the OctoAI Compute Service."
  homepage "https://octoai.cloud"
  version "0.4.7"
  license ":cannot_represent"

  depends_on "docker" => :optional
  depends_on "git"
  depends_on "python"

  on_macos do
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.4.7/octoai_0.4.7_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e78d8fdacabfa18ee2e333928534aa12f42172aad68e2e0261b47e97ff3750cf"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.arm?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.4.7/octoai_0.4.7_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4b562f35585f6a8373702b36615af0d51b068b9a0a4ea66d30a09e356607f776"

      def install
        bin.install "octoai"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.4.7/octoai_0.4.7_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f18ae1c449671465c7fe5608c58846b66a32efb9d7330cc32789027e3d92f6ee"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.4.7/octoai_0.4.7_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "392e4e37010b39d8bc386ad7bee1e9d736baa8be6d45953e2e53b0d1aef3c0e7"

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
