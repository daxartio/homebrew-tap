class Kdbx < Formula
  desc "A secure hole for your passwords (Keepass CLI)."
  homepage "https://github.com/daxartio/kdbx"
  version "0.9.1"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.9.1/kdbx-0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "7b769ce1c8a9165caff373c23ab9c58094511b3955ed7a4b006c8b2173fba05d"
    elsif Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.9.1/kdbx-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "53011a704cfd88a45574e911b58c83c6ff05cfe297dbed5df309221ae615d234"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.9.1/kdbx-0.9.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fd56545d76e12882b61f2ad36e86aa3286995f87caa2b967575d53fe5997ebc4"
    elsif Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.9.1/kdbx-0.9.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "25a1dfdbf9eef6051c6706f3f816a16b4553e374b1149db4114406b76a6f658d"
    end
  end
  def install
    bin.install "kdbx"
  end
  test do
    system "#{bin}/kdbx -V"
  end
end
