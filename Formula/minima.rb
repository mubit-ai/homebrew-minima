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
      sha256 "aadf010c483a89cee1f1bdbf6180f4a81581ae4045e75075865c757bb4a75c10"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.8.0/minima-0.8.0-darwin-x64.tar.gz"
      sha256 "47d3b587e886379d91c80a43eb114850399c06f3242ef8384a3d5741372a1b8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.8.0/minima-0.8.0-linux-arm64.tar.gz"
      sha256 "c75e17fac086410bdd967f42ebbfb52108b87f26388fb5d55b9c9243d375d468"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.8.0/minima-0.8.0-linux-x64.tar.gz"
      sha256 "82a0a2d427095c6472e6425df459ee456e3640643e3f97cf7caed1222ac51c9b"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
