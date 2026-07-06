class Minima < Formula
  desc "Cost-aware LLM model-routing coding agent"
  homepage "https://docs.minima.sh"
  version "0.7.2"
  license :cannot_represent # FSL-1.1-Apache-2.0 (not an SPDX id)

  # Prebuilt, self-contained Bun binary — no Python, no runtime deps. Install is
  # a download + extract (seconds), not a ~5-minute virtualenv build.
  on_macos do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.7.2/minima-0.7.2-darwin-arm64.tar.gz"
      sha256 "4aa3dc7ecd4b2da7c78d620a114fd340b4bbb76ddd4a45fd1b7dc98079e5a612"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.7.2/minima-0.7.2-darwin-x64.tar.gz"
      sha256 "98ae0c75db7fa0519bd8b755b3bc92675a286d0abf6e4412eb50e28b29e67711"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mubit-ai/minima/releases/download/v0.7.2/minima-0.7.2-linux-arm64.tar.gz"
      sha256 "0eafce1c8e46ffc5533654ff7eec406d90dad374db28330f535ff207e8a42b0d"
    end
    on_intel do
      url "https://github.com/mubit-ai/minima/releases/download/v0.7.2/minima-0.7.2-linux-x64.tar.gz"
      sha256 "7f1b086e42b16be34b9bc91b786a175447f21488f26c39ef2e3db5af2e26999a"
    end
  end

  def install
    bin.install "minima"
  end

  test do
    assert_match "cost-aware", shell_output("#{bin}/minima --help")
  end
end
