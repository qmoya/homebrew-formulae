class Unibetacode < Formula
  desc "Convert classical Greek and Coptic between Beta Code and Unicode"
  homepage "https://packages.debian.org/sid/unibetacode"
  url "http://deb.debian.org/debian/pool/main/u/unibetacode/unibetacode_1.2.orig.tar.gz"
  sha256 "94ec7c63d02c006823a0b8c1de60b4719936e5bad78678fb66ca2ebfb52e81e0"
  license ""

  depends_on "automake" => :install

  def install
    system "autoreconf", "--install"
    system "automake"
    system "./configure", "--disable-debug",
      "--disable-dependency-tracking",
      "--disable-silent-rules",
      "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/beta2uni"
  end
end
