class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.12.0"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.0/minima-0.12.0-darwin-arm64.tar.gz"
      sha256 "0f2071972c250b92dbf9013f6d3b846e59acb1ca9f17afce7c360ac4cbe6a5c3"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.0/minima-0.12.0-darwin-x64.tar.gz"
      sha256 "d8b89db4cdba4cca14cca0df51ba330133ca55cb2e77a0e891e5d5e435789d06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.0/minima-0.12.0-linux-arm64.tar.gz"
      sha256 "ea16353df9e755a1fd315bade09d0d47f64bdba22f3d7004c3548eb22dc45e45"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.12.0/minima-0.12.0-linux-x64.tar.gz"
      sha256 "f539edb4601b34a39f84f85d35e8bfb99d4b0048741a8cded4fc15dfa6df9f2b"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
