class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.13.0"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.13.0/minima-0.13.0-darwin-arm64.tar.gz"
      sha256 "fe8523ddabba006b2547a813d70a463322c76939684bfa43dec61425fc58131c"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.13.0/minima-0.13.0-darwin-x64.tar.gz"
      sha256 "d48ab7f7be0ccc419beef2eba5fe626677ddc07d7585d7001e44f48fec23b7fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.13.0/minima-0.13.0-linux-arm64.tar.gz"
      sha256 "fc1136cb5c9e0ac3be9b0f76d65dec7cb583e7aceee3b5fac41b90de31bbc62e"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.13.0/minima-0.13.0-linux-x64.tar.gz"
      sha256 "cbcc510469f34ea6fdc77b683b4437c78447c83a8b72be97c1a47b790693e7fe"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
