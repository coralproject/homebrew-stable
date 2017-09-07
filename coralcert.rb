class Coralcert < Formula
  desc "Secret Generation for The Coral Project's Talk product."
  homepage "https://github.com/coralproject/coralcert"
  url "https://github.com/coralproject/coralcert/archive/v0.0.2.tar.gz"
  sha256 "fb60d2f62df161f9a9be96421b2d0709dd97b122ec07e7c174d8177074059dc0"
  head "https://github.com/coralproject/coralcert.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    dir = buildpath/"src/github.com/coralproject/coralcert"
    dir.install buildpath.children
    cd dir do
      system "go", "build", "-o", bin/"coralcert"
      prefix.install_metafiles
    end
  end

  test do
    system bin/"coralcert"
  end
end