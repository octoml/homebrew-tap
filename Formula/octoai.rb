# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octoai < Formula
  desc "The CLI for the OctoAI Compute Service."
  homepage "https://octoai.cloud"
  version "0.4.5"
  license ":cannot_represent"

  depends_on "docker" => :optional
  depends_on "git"
  depends_on "python"

  on_macos do
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.4.5/octoai_0.4.5_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3c94a5ae85bdfd76edf8d3cf23b5b59a4342349c458bf4de6c0f8eb720e78c1b"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.arm?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.4.5/octoai_0.4.5_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "45ed2ff9d6c46e72e584171773b70d1689ceceabc344e6b778dbda7f49f52033"

      def install
        bin.install "octoai"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.4.5/octoai_0.4.5_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "28ea0a3d06bff7795713961739ddc13f3447c68c7d3f7992c8fa06be1a79596a"

      def install
        bin.install "octoai"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.4.5/octoai_0.4.5_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a3887fad0c1c4ee746a17230c6a3d44d05047f1402aeec6eda2b745d97df1cc7"

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
