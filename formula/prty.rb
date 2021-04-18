require "formula"

class PRTY < Formula
  desc "Intellegent PR Review"
  homepage "https://github.com/ajones/prty"
  url "https://github.com/ajones/homebrew-prty/archive/refs/tags/v0.0.1.tar.gz",
  sha256 "c4bb34abd18ef743572c085fcbaf0a4d5c0770a7c889ae5ce422213bb35e80d4"
  head "https://github.com/ajones/prty.git"

  def install
    bin.install "prty"
  end

  # Homebrew requires tests.
  test do
    assert_match "version 0.0.1", shell_output("#{bin}/prty -v", 2)
  end
end