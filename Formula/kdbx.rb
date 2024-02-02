class Kdbx < Formula
  desc "A secure hole for your passwords (Keepass CLI)."
  homepage "https://github.com/daxartio/kdbx"
  version "0.8.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.8.0/kdbx-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "057e4f3fd8acf077f5c4c42dcc12bd5d061f8f67b5c1bb15cb9a3ad12fec5bf3"
    if Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.8.0/kdbx-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "4ed97c29bc0eb3c204d77edc82c99b29b6bb424d1fa27b618d4fb6e11d6210cb"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.8.0/kdbx-0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "67291e4f332f7a00010860bc86c53c7c0fc5f2e60550d9cdab585f89e9cf2786"
    if Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.8.0/kdbx-0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f9b814694fbe3b7b632dc8b2493909cb609e79c52667962deed65091afa0e288"
    end
  end

  def install
    bin.install "kdbx"
  end

  test do
    system "#{bin}/kdbx -V"
  end
end
