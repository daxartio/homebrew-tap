class Kdbx < Formula
  desc "A secure hole for your passwords (Keepass CLI)."
  homepage "https://github.com/daxartio/kdbx"
  version "0.8.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/daxartio/kdbx/releases/download/0.8.0/kdbx-0.8.0-aarch64-apple-darwin.tar.gz"
    sha256 "4ed97c29bc0eb3c204d77edc82c99b29b6bb424d1fa27b618d4fb6e11d6210cb"
  end

  def install
    bin.install "kdbx"
  end

  test do
    system "#{bin}/kdbx -V"
  end
end
