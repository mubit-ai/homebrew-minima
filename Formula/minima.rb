class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.12.2"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.2/minima-0.12.2-darwin-arm64.tar.gz"
      sha256 "ce49f2595073d39732776542458491f79c9d11b3e08f553d10a070d8077c0c62"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.2/minima-0.12.2-darwin-x64.tar.gz"
      sha256 "11f92dfe39a98113bec2670803d57bb7a6c944e2dc8dd044e66f71491826e05e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.2/minima-0.12.2-linux-arm64.tar.gz"
      sha256 "cda4ec7c828e3c218238719991270df217ce6d4506fbcf50db66ccf0d646d187"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.2/minima-0.12.2-linux-x64.tar.gz"
      sha256 "169f38297ccb3eb398dfe19c5bef9fe36ce649abc27e3ac07cc5b2fb13edf67b"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
