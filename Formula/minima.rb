class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.12.4"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.4/minima-0.12.4-darwin-arm64.tar.gz"
      sha256 "e24380f278ea982f9a46e700b592de0fe9af995f471b809843536064f8c5bf4a"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.4/minima-0.12.4-darwin-x64.tar.gz"
      sha256 "b8f880d8dab895ecaadbc9047c9229e041603c8977cf8be3299a9dd2b1ca14d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.4/minima-0.12.4-linux-arm64.tar.gz"
      sha256 "27c30ab3d2bdffef07ba379558d5bacb0eede1de5f59592f764a1e542d9378ea"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.4/minima-0.12.4-linux-x64.tar.gz"
      sha256 "1e1b207939eaca80d9a8e4045cab1892dc225761e161cee5b3b301fb7e9aaebe"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
