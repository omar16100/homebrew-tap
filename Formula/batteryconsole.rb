class Batteryconsole < Formula
  desc "CLI tool to check Logitech MX device battery levels on macOS"
  homepage "https://github.com/omar16100/batteryconsole"
  url "https://github.com/omar16100/batteryconsole/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ee5b0ec32902aa664751dc306eea60493259323f06f6b3ed0db6c95d7314cf37"
  license "MIT"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "batteryconsole", shell_output("#{bin}/batteryconsole --version")
  end
end
