require "formula"

class Prty < Formula
  desc "Intellegent PR Review"
  homepage "https://github.com/ajones/prty"
  url "https://github.com/ajones/homebrew-prty/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "de9914f8a3cf0cba0fd0496c467b71150f217e3254a820134c205b90ef37a785"
  head "https://github.com/ajones/prty.git"

  def install
    bin.install "dist/prty"
  end

  # Homebrew requires tests.
  test do
    assert_match "version 0.0.6", shell_output("#{bin}/prty -v", 2)
  end
end