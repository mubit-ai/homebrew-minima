class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.5.0"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.5.0/minima-0.5.0-darwin-arm64.tar.gz"
      sha256 "ced8ee99ba01678c7bf4386d3246b409703e9167c40c29754d3f16acf19ced02"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.5.0/minima-0.5.0-darwin-x64.tar.gz"
      sha256 "93f30f52355317a16d5ff286250d170bf64940a35b7d575ba79f1158379501fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.5.0/minima-0.5.0-linux-arm64.tar.gz"
      sha256 "621ee6fe3c01223dce496a81899f90e8b27c45a5fb13241c66e90ccc2b614b43"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.5.0/minima-0.5.0-linux-x64.tar.gz"
      sha256 "099c61b330af94b0cb9bcf4458b16285c03d7cd77a2db291de6a38e0654744a8"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
