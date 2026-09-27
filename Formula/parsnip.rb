class Parsnip < Formula
  desc "Local-first memory graph for AI assistants"
  homepage "https://omar16100.github.io/parsnip/"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/omar16100/parsnip/releases/download/v0.2.0/parsnip-macos-arm64.tar.gz"
      sha256 "922c79cb6a68e23a4a028e308dcb3670cb77e51b4b32e5922b9d3461eb7552b4"
    end
    on_intel do
      url "https://github.com/omar16100/parsnip/releases/download/v0.2.0/parsnip-macos-amd64.tar.gz"
      sha256 "94c76210ceb68151f036acd40dd4b60454b1a1a8d14f93f7aaccc78d465f1f39"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omar16100/parsnip/releases/download/v0.2.0/parsnip-linux-amd64.tar.gz"
      sha256 "243c72efc0e7ab1105241445fe31011e8665a720ff3b4d0409b9456e5952d8aa"
    end
  end

  def install
    bin.install "parsnip"
  end

  test do
    assert_equal "parsnip #{version}", shell_output("#{bin}/parsnip --version").strip
  end
end
