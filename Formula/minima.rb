class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.12.1"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.1/minima-0.12.1-darwin-arm64.tar.gz"
      sha256 "0219eb7c60280abbc8af3a9c615362d27fb2698c8b465b6c376775e2f97de7ba"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.1/minima-0.12.1-darwin-x64.tar.gz"
      sha256 "982c844766196ee4dc747afbc8bd6d916965b2478b79bde0eab313265efc90ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.1/minima-0.12.1-linux-arm64.tar.gz"
      sha256 "953a823331c99fc8ae45bf0d85fd7ab8fdcf028f1b209fd4905998ef3eebb7cc"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.1/minima-0.12.1-linux-x64.tar.gz"
      sha256 "5de51edc0b4c43e3ac1e420003e99a66b11871a35ab2a36f7311d3e4ac1b9630"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
