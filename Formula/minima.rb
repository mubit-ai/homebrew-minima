class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.7.1"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.7.1/minima-0.7.1-darwin-arm64.tar.gz"
      sha256 "1434dfb21d7d9cdac81c872d7f02a0ef22430f8257dbc7c3bb7b7d0bd20696d4"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.7.1/minima-0.7.1-darwin-x64.tar.gz"
      sha256 "c56492236470dfccc109e9f8c2774b9d7dbc64085b194256eb1737f8bf26866e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.7.1/minima-0.7.1-linux-arm64.tar.gz"
      sha256 "75d345ad0712725274c9f59dce8e17c2e6b5fb7d2fb6abcef0779824b8180fbe"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.7.1/minima-0.7.1-linux-x64.tar.gz"
      sha256 "82b23a0c600602407bb33a7b092f143384d9514df6c39c3809f6cf2d347560d2"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
