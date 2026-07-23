class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.14.1"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.1/minima-0.14.1-darwin-arm64.tar.gz"
      sha256 "4eccfeebcb4a64e11495f3d4e9d8c0da7aa7a8e3261a57982d490124dc739dda"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.1/minima-0.14.1-darwin-x64.tar.gz"
      sha256 "bd389b164c1d1c0f78991800accde141e60563ac366c6e5319d04987cb9675da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.1/minima-0.14.1-linux-arm64.tar.gz"
      sha256 "ed112322a4b70ff1db523732736ea187f6bc9cfde4610b928ab9dd7cbcba57b8"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.14.1/minima-0.14.1-linux-x64.tar.gz"
      sha256 "f210388ed6f33811117d7f85b46110ae49c2e64ea2cf8c6d5a02433a0917e85a"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
