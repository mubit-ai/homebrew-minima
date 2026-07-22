class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.14.0"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.0/minima-0.14.0-darwin-arm64.tar.gz"
      sha256 "12c0bb78b9bb1d5dd364cbd4c60bae0a14baf1c5d67a1e69663ec9a17416cf9d"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.0/minima-0.14.0-darwin-x64.tar.gz"
      sha256 "293b0414f479fa4c7ddfb6b419257c232668fce72ef76954657000f8fbdbc731"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.0/minima-0.14.0-linux-arm64.tar.gz"
      sha256 "99937ac950eb1526c4eb7d4fdfb138764e3c6f4dd0403b42546c94bdb4b06f48"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.0/minima-0.14.0-linux-x64.tar.gz"
      sha256 "8ab1a02c1b144b1a5d780879a2cf20fd096db48ed3107f4e8ccc85f0251c1080"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
