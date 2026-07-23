class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.14.3"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.3/minima-0.14.3-darwin-arm64.tar.gz"
      sha256 "4faae5adc0244b9503f5cd75364d8806f97af922725a13f8b193d869f1d6183c"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.3/minima-0.14.3-darwin-x64.tar.gz"
      sha256 "a281211cb5e013f4f8b7c1b3da0ce48a405e36664d20f50a1fb216a0e810008b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.3/minima-0.14.3-linux-arm64.tar.gz"
      sha256 "224c593b18224e28dd4985b0a208c39af52f9d8311f92214c243238225d52183"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.3/minima-0.14.3-linux-x64.tar.gz"
      sha256 "d43c3a94797dc9bcab48946e13a83f49ee7ca0b2b9c7f8ec14e27339b1f95d26"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
