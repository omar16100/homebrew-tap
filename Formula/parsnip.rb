class Parsnip < Formula
  desc "Local-first memory graph for AI assistants"
  homepage "https://omar16100.github.io/parsnip/"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/omar16100/parsnip/releases/download/v#{version}/parsnip-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64"
    end
    on_intel do
      url "https://github.com/omar16100/parsnip/releases/download/v#{version}/parsnip-macos-amd64.tar.gz"
      sha256 "PLACEHOLDER_AMD64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omar16100/parsnip/releases/download/v#{version}/parsnip-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX"
    end
  end

  def install
    bin.install "parsnip"
  end

  test do
    system "#{bin}/parsnip", "--version"
  end
end
