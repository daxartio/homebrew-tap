class Kdbx < Formula
  desc "A secure hole for your passwords (Keepass CLI)."
  homepage "https://github.com/daxartio/kdbx"
  version "0.12.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.12.0/kdbx-0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "3c091b151bf14178f0091d1daffe86795b9e4eb5ed257aec3c257c325fedc861"
    elsif Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.12.0/kdbx-0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "82a7ea48b0d82e4e4835ecc13711e837ad0ef37fb112c9863c563c21e01bfee3"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.12.0/kdbx-0.12.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b309df868a207203e62f09a42b024d204c36b113898f36363141032aabe1ebf6"
    elsif Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.12.0/kdbx-0.12.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a008ab52ca9c16bd87f312666c6ff9ecbfeb7e5a91c6e043b08ec3d29a229b83"
    end
  end
  def install
    bin.install "kdbx"
  end
  test do
    system "#{bin}/kdbx -V"
  end
end
