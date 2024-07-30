# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octoai < Formula
  desc "The CLI for the OctoAI Compute Service."
  homepage "https://octoai.cloud"
  version "0.6.0"
  license ":cannot_represent"

  on_macos do
    on_intel do
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.6.0/octoai_0.6.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "849724e521e236520fde2bc837c554e5d1fa5c17003bc453d10bcfd770510fe7"

      def install
        bin.install "octoai"
      end
    end
    on_arm do
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.6.0/octoai_0.6.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cd413e42a8108515210174b01cdceec8c4cc62275ad1fe6834ffc59ccb96c0a1"

      def install
        bin.install "octoai"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.6.0/octoai_0.6.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "204db830286e2a155fe69d6de7bc84c3e899998630d9326ff0184a117fb13df6"

        def install
          bin.install "octoai"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.6.0/octoai_0.6.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "326c01e9add1d6164831fbf988d18439a5bc4cc1918b28d7293b46639cd011ba"

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
