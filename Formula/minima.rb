class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.5.1"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.5.1/minima-0.5.1-darwin-arm64.tar.gz"
      sha256 "118a0f8fdce786ae883bc65b8144732712acf96cae5f66d7acecff687634aa46"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.5.1/minima-0.5.1-darwin-x64.tar.gz"
      sha256 "cb9da7d7b09e63c0ca908240e2098fdb765d0b51ee79577eb6d6ccb5bb97378c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.5.1/minima-0.5.1-linux-arm64.tar.gz"
      sha256 "7abb55f8056bbc25cc5618bf916fdd0b75d994ef55a863c711551f3b99acdb1a"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.5.1/minima-0.5.1-linux-x64.tar.gz"
      sha256 "a3ad11222ae4a3a853a7bbbd94d155111dbb281ce199191ed6b0b015a371fea0"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
