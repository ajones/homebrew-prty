require "formula"

class Prty < Formula
  desc "Intellegent PR Review"
  homepage "https://github.com/ajones/prty"
  url "https://github.com/ajones/homebrew-prty/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "9862e8d329bb69c10f93d3be8eb2ceeedcd1780ecdea113540a53d6c4f74c3ee"
  head "https://github.com/ajones/prty.git"

  def install
    bin.install "dist/prty"
  end

  # Homebrew requires tests.
  test do
    assert_match "version 0.0.8", shell_output("#{bin}/prty -v", 2)
  end
end