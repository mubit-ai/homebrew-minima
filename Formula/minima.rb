class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.9.0"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.9.0/minima-0.9.0-darwin-arm64.tar.gz"
      sha256 "037808ebc405ac2cedf3e3afd251d60256ed0b8ef5dde9ca5bf94f4554bead1b"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.9.0/minima-0.9.0-darwin-x64.tar.gz"
      sha256 "9faf0564756d69a782068ffa31771d6c37de131b19031b67e99545f4d015be68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.9.0/minima-0.9.0-linux-arm64.tar.gz"
      sha256 "e28f21fc2f18a7d1c327219e8a33278678df07f28ca5a4e0d69b1dd9f44b4325"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.9.0/minima-0.9.0-linux-x64.tar.gz"
      sha256 "5b2c6374b9f28bb042843c322c3594bbca1bf4b79d132f734fb7a11b3e7517a9"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
