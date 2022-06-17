class Octoml < Formula
  desc "The OctoML CLI for packaging and deploying models."
  homepage "https://octoml.ai"
  url "https://downloads.octoml.ai/octoml_macOS_v0.4.4.zip"
  sha256 "86846d8c2d175808453d6923d2c2e8ecdc6ce675aa353bb33cc2528cd0e64b5a"
  version "0.4.4"

  conflicts_with "octoml"

  def install
    bin.install "octoml"
  end

  test do
    system "#{bin}/octoml --version"
  end
end
