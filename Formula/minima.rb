class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.7.0"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.7.0/minima-0.7.0-darwin-arm64.tar.gz"
      sha256 "1936e1790738dccdee964a3789a6d9c51ccd9d4f9a3dadda8a742272361a6ca5"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.7.0/minima-0.7.0-darwin-x64.tar.gz"
      sha256 "60551ed5e55805a71613dcffab1a667605152d9783633190b5d43221f357049f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.7.0/minima-0.7.0-linux-arm64.tar.gz"
      sha256 "143a46bbf73efb10a2b4a0fbe30225d98a4401d9ec6388330b121c83b435fd4c"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.7.0/minima-0.7.0-linux-x64.tar.gz"
      sha256 "8237261a950dfd82a00ccc507c0c42a96b0c1790e7490eb2090699dfd9e636bd"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
