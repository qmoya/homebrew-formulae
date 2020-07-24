class Bekker < Formula
  desc "Perseus-XML-to-Roam-Research converter"
  homepage "https://github.com/qmoya/Bekker"
  url "https://github.com/qmoya/Bekker.git", :tag => "0.0.2", :revision => "44dbae9d64e8a78ac84444d14f82c9e919bf1e11"
  head "https://github.com/qmoya/Bekker", :shallow => false

  depends_on "unibetacode" => :build

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/bekker"
  end
end
