class Badger < Formula
  desc "A lightweight quality gate for Claude Code sessions"
  homepage "https://github.com/garyjohnson/badger"
  url "https://github.com/garyjohnson/badger/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "ed45f4eb3622c3b4a153ce002710cb342ff810fe233a91d32183b8439d77bda3"
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
