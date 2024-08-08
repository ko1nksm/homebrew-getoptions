class Getoptions < Formula
  desc "An elegant option parser for shell scripts"
  homepage "https://github.com/ko1nksm/getoptions"
  url "https://github.com/ko1nksm/getoptions/archive/refs/tags/v3.3.1.tar.gz"
  sha256 "5873c6effd1f5ea9079bd3fa41ec098b9f0ba8a348560faf237b118982f44c93"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/gengetoptions", "--info"
  end
end
