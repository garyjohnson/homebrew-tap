class Badger < Formula
  desc "A lightweight quality gate for Claude Code sessions"
  homepage "https://github.com/garyjohnson/badger"
  url "https://github.com/garyjohnson/badger/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "40f7c6bc3e7d2ace49a2240f26a011c4f391801f1d40461bd2f864508f6a00f3"
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
