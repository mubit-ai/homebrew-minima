class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.12.3"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.3/minima-0.12.3-darwin-arm64.tar.gz"
      sha256 "afba1df030ea5436cdb7db42381818b547e2ce2718078d5fc266470ba7a36677"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.3/minima-0.12.3-darwin-x64.tar.gz"
      sha256 "7af039397c05cde4fe0c00cc97131d71237d05634f50cf7f008ef1ee7c29b6ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.3/minima-0.12.3-linux-arm64.tar.gz"
      sha256 "bee9b396d72f4cb504e8fe885462a64b79efbf0282ca55c42fa9d2208d91eab0"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.3/minima-0.12.3-linux-x64.tar.gz"
      sha256 "4763acd86d7f567d6eda8b136f2caa4f6fe5fc61712bf29644c4dc581313574a"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
