require "formula"

class Prty < Formula
  desc "Intellegent PR Review"
  homepage "https://github.com/ajones/prty"
  url "https://github.com/ajones/homebrew-prty/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "f81ecef0cb290c646e1d5bec1abf5f7db666ffe903b2b1cd6eb584356e1a7cee"
  head "https://github.com/ajones/prty.git"

  def install
    bin.install "prty"
  end

  # Homebrew requires tests.
  test do
    assert_match "version 0.0.1", shell_output("#{bin}/prty -v", 2)
  end
end