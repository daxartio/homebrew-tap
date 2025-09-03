class Kdbx < Formula
  desc "A secure hole for your passwords (Keepass CLI)."
  homepage "https://github.com/daxartio/kdbx"
  version "0.10.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.10.0/kdbx-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "2ff5fa2b6a56d3041089a0e1b86802babac69dc370a464cada5f3532afd604ce"
    elsif Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.10.0/kdbx-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "f61009d26e61208537ce4a65c0695035f77cd5d6cd7b951c3a9671807c9dd051"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.10.0/kdbx-0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "07b0ea2331624d89dbc8b80dad877f0a99c9d7f495ca0dc2b7a4e153905939f4"
    elsif Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.10.0/kdbx-0.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6272e6285c599561f057d0637e2512607ec5b844797546c06aedc009bf968024"
    end
  end
  def install
    bin.install "kdbx"
  end
  test do
    system "#{bin}/kdbx -V"
  end
end
