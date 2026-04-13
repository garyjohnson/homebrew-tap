class Badger < Formula
  desc "A lightweight quality gate for Claude Code sessions"
  homepage "https://github.com/garyjohnson/badger"
  url "https://github.com/garyjohnson/badger/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "3f9b510920138974ff5fa567ff600ffec55cdd0c5e009f50fe8fbf9e3a0436bc"
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
