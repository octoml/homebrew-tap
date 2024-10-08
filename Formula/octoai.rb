# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octoai < Formula
  desc "The CLI for the OctoAI Compute Service."
  homepage "https://octoai.cloud"
  version "0.7.0"
  license ":cannot_represent"

  on_macos do
    on_intel do
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.7.0/octoai_0.7.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b0d460203e0d53aca3977cf9983ef894eaa8880089fbac03b386ffc8a6e3fe4c"

      def install
        bin.install "octoai"
      end
    end
    on_arm do
      url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.7.0/octoai_0.7.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9138e7a24428693e1cc03b829ad7e1a5c467e48d67c590a45b33692b496f023e"

      def install
        bin.install "octoai"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.7.0/octoai_0.7.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "5aac20ca584f1224a9c616938a03a655e5329aa66da4b809aa8fee4d053f2a0f"

        def install
          bin.install "octoai"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://s3.amazonaws.com/downloads.octoai.cloud/octoai/v0.7.0/octoai_0.7.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "d3af5606c436bed4ac6238026275efb27649200c9192860225b5751f03ff486c"

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
