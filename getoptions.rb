class Getoptions < Formula
  desc "An elegant option parser for shell scripts"
  homepage "https://github.com/ko1nksm/getoptions"
  url "https://github.com/ko1nksm/getoptions/archive/refs/tags/v3.3.0.tar.gz"
  sha256 "b767c6886d3b3f1258463aca500f9f06ed58f1bc6b11eb6e3e33de66847d4123"

  bottle :unneeded

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/gengetoptions", "--info"
  end
end
