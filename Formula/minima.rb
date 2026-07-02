class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.6.0"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.6.0/minima-0.6.0-darwin-arm64.tar.gz"
      sha256 "7bdd442d722a38ba21f693f3cf6a9df4834fd4b6fa94062216559c75fabeb4d5"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.6.0/minima-0.6.0-darwin-x64.tar.gz"
      sha256 "8190e5b443f2a88f2b9c16ca3b1b20f950409eff137f0df97ca52755f1cfff2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.6.0/minima-0.6.0-linux-arm64.tar.gz"
      sha256 "202e4d315520d0f81dec070c102a50ff18a887eb940616b9fb35dc82994ea1a4"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.6.0/minima-0.6.0-linux-x64.tar.gz"
      sha256 "7ecb92af9c508532baac3bd91f826ade1c43662d0fedc7dfb79702837af82c8c"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
