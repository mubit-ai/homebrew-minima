class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.13.2"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.13.2/minima-0.13.2-darwin-arm64.tar.gz"
      sha256 "784698e9deac667278743731f060648f40cce19000d286011cdc2c4482c6c11f"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.13.2/minima-0.13.2-darwin-x64.tar.gz"
      sha256 "a8fd3fdaee6a3a5b05f6f0b784e258332a7e32c5252f7d74e22e1ef61b342e7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.13.2/minima-0.13.2-linux-arm64.tar.gz"
      sha256 "81cc94af4c0018684fe1bee2820f5994f78ef174e0dd469f962ca5b1a4b65bbf"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.13.2/minima-0.13.2-linux-x64.tar.gz"
      sha256 "979dd949581af81a231198e1dc0f13dd235dfd5446f18025ce5c5e50555e31fa"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
