class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.8.0"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.8.0/minima-0.8.0-darwin-arm64.tar.gz"
      sha256 "7e93817261c61d3619450e8b082e54bdb0f8dd78eafdc55af8be733bbcc4ebd4"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.8.0/minima-0.8.0-darwin-x64.tar.gz"
      sha256 "3a8148a05eef954a39ee8d57ce38f7322858d1f0d4ed2596e61c10776a244703"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.8.0/minima-0.8.0-linux-arm64.tar.gz"
      sha256 "db3e16ead8713c551649d7ba35f504448baedee1c3c8ae9bf785dc419e22bab7"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.8.0/minima-0.8.0-linux-x64.tar.gz"
      sha256 "d9c4a43c698b16512bd919a2a1c017799e11afeb388a191662f5289a00eed1e5"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
