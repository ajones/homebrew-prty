require "formula"

class Prty < Formula
  desc "Intellegent PR Review"
  homepage "https://github.com/ajones/prty"
  url "https://github.com/ajones/homebrew-prty/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "73e7914e0f20b52960cb16c45209fc830bfcdbff2ea6dfb2044de300231a6c92"
  head "https://github.com/ajones/prty.git"

  def install
    bin.install "dist/prty"
  end

  # Homebrew requires tests.
  test do
    assert_match "version 0.0.2", shell_output("#{bin}/prty -v", 2)
  end
end