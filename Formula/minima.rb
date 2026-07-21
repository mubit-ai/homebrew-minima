class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.13.1"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.13.1/minima-0.13.1-darwin-arm64.tar.gz"
      sha256 "d2fc89fddb9158788b51bc379f7732f038ff639f971e4522e222cf7530d98dc4"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.13.1/minima-0.13.1-darwin-x64.tar.gz"
      sha256 "e9041ff1b87bc1680b112152a7333f6c3e76af274aa36fd8f1aac0bc0cd402df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.13.1/minima-0.13.1-linux-arm64.tar.gz"
      sha256 "c1df4c65aa7bf9d836761520a11df2dd78df39cbc7bd0d477353b709b885a9e6"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.13.1/minima-0.13.1-linux-x64.tar.gz"
      sha256 "60492848d543d528d969770d385caee5f750fb71d511a29f48478e37c7b55b11"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
