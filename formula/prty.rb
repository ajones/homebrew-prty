require "formula"

class Prty < Formula
  desc "Intellegent PR Review"
  homepage "https://github.com/ajones/prty"
  url "https://github.com/ajones/homebrew-prty/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "7d6cbfe6766a3afe3cf87e013aba7c78189a3a9db1788d708961a68553971e88"
  head "https://github.com/ajones/prty.git"

  def install
    bin.install "dist/prty"
  end

  # Homebrew requires tests.
  test do
    assert_match "version 0.0.5", shell_output("#{bin}/prty -v", 2)
  end
end