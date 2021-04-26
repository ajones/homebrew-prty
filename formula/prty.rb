require "formula"

class Prty < Formula
  desc "Intellegent PR Review"
  homepage "https://github.com/ajones/prty"
  url "https://github.com/ajones/homebrew-prty/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "4586a415b363d5786885b9f2df873079bab5827b759d891485bbe66d3bad85c4"
  head "https://github.com/ajones/prty.git"

  def install
    bin.install "dist/prty"
  end

  # Homebrew requires tests.
  test do
    assert_match "version 0.0.7", shell_output("#{bin}/prty -v", 2)
  end
end