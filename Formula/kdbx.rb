class Kdbx < Formula
  desc "A secure hole for your passwords (Keepass CLI)."
  homepage "https://github.com/daxartio/kdbx"
  version "0.9.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.9.0/kdbx-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "c73d951440c9d45be42a0a2f460d744bc1eca2a2e7656d502a69b163e8f6a54c"
    elsif Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.9.0/kdbx-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "9b57b8e235c44a23e7c397d5631c44cfa8e8be1248a2cccd688c9feee6cdb96a"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.9.0/kdbx-0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "703b533c7333b8a27b790187b0cd3992de65e3a270c29706c96b899fa49a6dad"
    elsif Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.9.0/kdbx-0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f17823270620d08a967d21d64ae7189822ca7a0ec7e3953f6ccacfe7761a4451"
    end
  end

  def install
    bin.install "kdbx"
  end

  test do
    system "#{bin}/kdbx -V"
  end
end
