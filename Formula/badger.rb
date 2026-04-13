class Badger < Formula
  desc "A lightweight quality gate for Claude Code sessions"
  homepage "https://github.com/garyjohnson/badger"
  url "https://github.com/garyjohnson/badger/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/badger"
  end

  test do
    assert_match "badger #{version}", shell_output("#{bin}/badger version")
  end
end
