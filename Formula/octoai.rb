# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octoai < Formula
  desc "The CLI for the OctoAI Compute Service."
  homepage "https://octoai.cloud"
  version "0.5.29"
  license ":cannot_represent"

  on_macos do
    on_intel do
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.5.29/octoai_0.5.29_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5d9f83da903f9cce8db3fc129b69c398a44bb154d1080746751ae2bcd6fdf3e2"

      def install
        bin.install "octoai"
      end
    end
    on_arm do
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.5.29/octoai_0.5.29_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "834448eaff916ed717f816f348a15af131fc8173389f0afd84ee662ad059a803"

      def install
        bin.install "octoai"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.5.29/octoai_0.5.29_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "62fc9bf99e34cf12182d9ec7afc65f44acb28f8040ed9a52d16c3b72463812bf"

        def install
          bin.install "octoai"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.5.29/octoai_0.5.29_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "c12d9882c71416bae2f791edc38fe569086913f7a4c80737f9822d52b13b72d5"

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
