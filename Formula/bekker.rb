class Bekker < Formula
  desc "A Perseus-XML-to-Roam-Research converter"
  homepage "https://github.com/qmoya/Bekker"
  head "https://github.com/qmoya/Bekker", :branch => :master

  depends_on "unibetacode" => :build

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/bekker"
  end
end
