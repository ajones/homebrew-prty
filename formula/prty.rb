require "formula"

class Prty < Formula
  desc "Intellegent PR Review"
  homepage "https://github.com/ajones/prty"
  url "https://github.com/ajones/homebrew-prty/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "fa8ff1ac5e02f9221810111c56121e9da8529d309d403eaeb39a46bac06d6890"
  head "https://github.com/ajones/prty.git"

  def install
    bin.install "dist/prty"
  end

  # Homebrew requires tests.
  test do
    assert_match "version 0.0.1", shell_output("#{bin}/prty -v", 2)
  end
end