class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.5.2"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.5.2/minima-0.5.2-darwin-arm64.tar.gz"
      sha256 "639c3122d00f059761d63733f6e28ec675108ea0b05dba87d06321c972ca39e5"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.5.2/minima-0.5.2-darwin-x64.tar.gz"
      sha256 "4afc2545c69a6946fa24a000a331f9581848e5207e5783f8e5a56e5fd127514e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.5.2/minima-0.5.2-linux-arm64.tar.gz"
      sha256 "6fd107cdbae8b95fd94418d4512a015912cfd656e538a0ffb9789ae9d65ebc24"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.5.2/minima-0.5.2-linux-x64.tar.gz"
      sha256 "b66719cb6993fa378b1db52cd8af0aae47c4503fe50707f951728a114f0fc1ae"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
