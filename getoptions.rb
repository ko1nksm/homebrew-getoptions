class Getoptions < Formula
  desc "An elegant option parser for shell scripts"
  homepage "https://github.com/ko1nksm/getoptions"
  url "https://github.com/ko1nksm/getoptions/archive/refs/tags/v3.3.2.tar.gz"
  sha256 "2e8c557e878eb2c728cb90af9c0a6e29bf4c50eed0ac196c1f57c76fbfbf9241"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/gengetoptions", "--info"
  end
end
