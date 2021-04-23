require "formula"

class Prty < Formula
  desc "Intellegent PR Review"
  homepage "https://github.com/ajones/prty"
  url "https://github.com/ajones/homebrew-prty/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "eb9515cb4a779dda1779ebc1ecabaa5cba1d14802a9d780e167c02f6f966962d"
  head "https://github.com/ajones/prty.git"

  def install
    bin.install "dist/prty"
  end

  # Homebrew requires tests.
  test do
    assert_match "version 0.0.4", shell_output("#{bin}/prty -v", 2)
  end
end