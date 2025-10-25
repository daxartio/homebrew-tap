class Kdbx < Formula
  desc "A secure hole for your passwords (Keepass CLI)."
  homepage "https://github.com/daxartio/kdbx"
  version "0.11.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.11.0/kdbx-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "fa2702ab1932b62ca542a9e14e986b7c2db7bf6df85a4d586e1df18eab527718"
    elsif Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.11.0/kdbx-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "6da3e9e69340081df1cad7dc3dbb9ba948cd2cedc09d188053d3c185f9c6ac62"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/daxartio/kdbx/releases/download/0.11.0/kdbx-0.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "81e80bee6cac48d478739107bf9488c99851fe2609042b306cbfd9ed6dde7d69"
    elsif Hardware::CPU.arm?
      url "https://github.com/daxartio/kdbx/releases/download/0.11.0/kdbx-0.11.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cbca6d2821e5bf0ff858bb8cbe3fa344337b6da88e1051cd7fa60f20ec4be7b5"
    end
  end
  def install
    bin.install "kdbx"
  end
  test do
    system "#{bin}/kdbx -V"
  end
end
