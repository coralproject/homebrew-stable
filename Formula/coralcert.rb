class Coralcert < Formula
  desc "Secret Generation for The Coral Project's Talk product."
  homepage "https://github.com/coralproject/coralcert"
  url "https://github.com/coralproject/coralcert/releases/download/v1.0.0/coralcert_v1.0.0_darwin_amd64.tar.gz"
  version "1.0.0"
  sha256 "e2155bc53c722966045d88e76c961ff5ab5fb86d9fed1ebe5a3865fd0c141d6b"

  def install
    bin.install "coralcert"
  end

  test do
    system "#{bin}/coralcert -v"
  end
end
