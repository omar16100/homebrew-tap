class Parsnip < Formula
  desc "Local-first memory graph for AI assistants"
  homepage "https://omar16100.github.io/parsnip/"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/omar16100/parsnip/releases/download/v#{version}/parsnip-macos-arm64.tar.gz"
      sha256 "8f5c5f9c6689613a60c9533f06467f32a4d5e39273a77bb296334d993fbf17ad"
    end
    on_intel do
      url "https://github.com/omar16100/parsnip/releases/download/v#{version}/parsnip-macos-amd64.tar.gz"
      sha256 "126ff9bed9efd78ab7d74864baaf84120516c617317afb36651803cd67c0d3a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omar16100/parsnip/releases/download/v#{version}/parsnip-linux-amd64.tar.gz"
      sha256 "7f81f41014fe63f9384fbff61f231a5e2f41cafb4d42e569cae2000819edffb2"
    end
  end

  def install
    bin.install "parsnip"
  end

  test do
    system "#{bin}/parsnip", "--version"
  end
end
