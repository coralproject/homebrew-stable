class Coralcert < Formula
  desc "Secret Generation for The Coral Project's Talk product."
  homepage "https://github.com/coralproject/coralcert"
  url "https://github.com/coralproject/coralcert/archive/v0.0.3.tar.gz"
  sha256 "0f2ac077eb0f2db8f6686a8b3225560085bb1b986021f667a9160597daa1d35e"
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
