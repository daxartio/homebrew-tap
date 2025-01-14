class Kdbx < Formula
  desc "A secure hole for your passwords (Keepass CLI)."
  homepage "https://github.com/daxartio/kdbx"
  version "0.9.3"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.9.3/kdbx-0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "3aa5e110abea77128ac556be1022e87d4a79735a205dce624dcbc6da90808f55"
    elsif Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.9.3/kdbx-0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "80034b8d0e701ea11bdae657e70e5a96b34701c0bd0461d5e6203fe3f335f6d6"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.9.3/kdbx-0.9.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fca9edb65b93e012e0df8efdd247b7ef8978c5a645d7e61018ca6b28ef69e892"
    elsif Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.9.3/kdbx-0.9.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "91184237763d450ccde4b3824b8faf9e9b39ee3d7d42edbda7236dd812fb99bb"
    end
  end
  def install
    bin.install "kdbx"
  end
  test do
    system "#{bin}/kdbx -V"
  end
end
