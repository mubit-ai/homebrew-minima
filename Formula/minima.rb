class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.10.0"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.10.0/minima-0.10.0-darwin-arm64.tar.gz"
      sha256 "2a25a84182df583344d2836cb6a6ecdc19d7c40bcadd994c66f6ffc6b32b281f"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.10.0/minima-0.10.0-darwin-x64.tar.gz"
      sha256 "f24eef052f7ae8e382f93cebe2f716aa1e5a36e5f20fb01657cd2cbc3f9d55dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.10.0/minima-0.10.0-linux-arm64.tar.gz"
      sha256 "3283956bacb3b72955e6a2a66305c5ae2c7c41efef74c660e399afa6b6be89a9"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.10.0/minima-0.10.0-linux-x64.tar.gz"
      sha256 "015c487e252f5f8fa160206e1a9080cf2ce33f536595841c4ea2dd96bed8f8c5"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
