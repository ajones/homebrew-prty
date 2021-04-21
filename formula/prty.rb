require "formula"

class Prty < Formula
  desc "Intellegent PR Review"
  homepage "https://github.com/ajones/prty"
  url "https://github.com/ajones/homebrew-prty/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "644a1c2f5ccf225c9b96357edf1843bb75450ec77d043f28edb015b84b9dc6a2"
  head "https://github.com/ajones/prty.git"

  def install
    bin.install "dist/prty"
  end

  # Homebrew requires tests.
  test do
    assert_match "version 0.0.3", shell_output("#{bin}/prty -v", 2)
  end
end