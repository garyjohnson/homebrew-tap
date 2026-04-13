class Badger < Formula
  desc "A lightweight quality gate for Claude Code sessions"
  homepage "https://github.com/garyjohnson/badger"
  url "https://github.com/garyjohnson/badger/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "517a2748af52e963d2f37e461d37fb4dcd26b7c3de631fd9ad33b51080362cc8"
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
