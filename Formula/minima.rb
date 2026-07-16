class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.11.0"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.11.0/minima-0.11.0-darwin-arm64.tar.gz"
      sha256 "c4c7dfcf8341b569da47c7b41d44f524631f43cba3c6ee0253d6edcc8289668e"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.11.0/minima-0.11.0-darwin-x64.tar.gz"
      sha256 "e473a4c264f6ca90920715329347e4ad57a11c78521b2f3b634f88646f992dd9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.11.0/minima-0.11.0-linux-arm64.tar.gz"
      sha256 "228dd9a764f967cad36c1bf62fc5445545cf65046a9dcfe97be514af0812bf5d"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.11.0/minima-0.11.0-linux-x64.tar.gz"
      sha256 "f2239c6af6004ff5155d820231aad0beba6b4e371bc1d914848e327e4a1a1fb5"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
