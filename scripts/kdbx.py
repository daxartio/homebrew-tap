import sys

import requests

version = sys.argv[1]
urls = {
    "x86_64-apple-darwin": f"https://github.com/daxartio/kdbx/releases/download/{version}/kdbx-{version}-x86_64-apple-darwin.tar.gz",
    "aarch64-apple-darwin": f"https://github.com/daxartio/kdbx/releases/download/{version}/kdbx-{version}-aarch64-apple-darwin.tar.gz",
    "x86_64-unknown-linux-musl": f"https://github.com/daxartio/kdbx/releases/download/{version}/kdbx-{version}-x86_64-unknown-linux-musl.tar.gz",
    "aarch64-unknown-linux-musl": f"https://github.com/daxartio/kdbx/releases/download/{version}/kdbx-{version}-aarch64-unknown-linux-musl.tar.gz",
}


def get_sha256(url):
    r = requests.get(f'{url}.sha256')
    return r.content.decode('utf-8').split(' ')[0]


checksums = {os: get_sha256(url) for os, url in urls.items()}

with open('Formula/kdbx.rb', 'w') as f:
    f.write(
        f"""class Kdbx < Formula
  desc "A secure hole for your passwords (Keepass CLI)."
  homepage "https://github.com/daxartio/kdbx"
  version "{version}"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.intel?
      url "{urls['x86_64-apple-darwin']}"
      sha256 "{checksums['x86_64-apple-darwin']}"
    elsif Hardware::CPU.arm?
      url "{urls['aarch64-apple-darwin']}"
      sha256 "{checksums['aarch64-apple-darwin']}"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "{urls['x86_64-unknown-linux-musl']}"
      sha256 "{checksums['x86_64-unknown-linux-musl']}"
    elsif Hardware::CPU.arm?
      url "{urls['aarch64-unknown-linux-musl']}"
      sha256 "{checksums['aarch64-unknown-linux-musl']}"
    end
  end

  def install
    bin.install "kdbx"
  end

  test do
    system "#{{bin}}/kdbx -V"
  end
end
"""
    )
