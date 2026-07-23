class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.14.2"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.2/minima-0.14.2-darwin-arm64.tar.gz"
      sha256 "2fe5c5a50d90ea425a9ba9401020abd22b0351a0273c01f44b2d95ca5246efb0"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.2/minima-0.14.2-darwin-x64.tar.gz"
      sha256 "959e695de8bb790a45f4b5ee2eb3ca2d4a64c4aa0ecb9c3294b081b8b0704c7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.2/minima-0.14.2-linux-arm64.tar.gz"
      sha256 "db598e506ba30bcdbf7d0d7341209f06708e5c81ae28012d9054e5070fea4bdf"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.2/minima-0.14.2-linux-x64.tar.gz"
      sha256 "0a348419c3756a66abb00436315b6be862bec6dcc4eb74de87414816669d593c"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
