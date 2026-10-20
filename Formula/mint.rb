class Mint < Formula
  desc "CLI tool to generate boilerplate files and directories"
  homepage "https://github.com/saikiranp-24/mint"
  version "0.1.0-rc.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.2/mint-v0.1.0-rc.2-aarch64-apple-darwin.tar.gz"
      sha256 "db20a8a8653c74b1bd28731f153e51d8f5681da747dc714b1b681432980643ab"
    end
    if Hardware::CPU.intel?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.2/mint-v0.1.0-rc.2-x86_64-apple-darwin.tar.gz"
      sha256 "828a1bf5ba43fd80e3d5f98e523413618320416c437ae96353b040d8bea9a9a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.2/mint-v0.1.0-rc.2-aarch64-unknown-linux-glibc.tar.gz"
      sha256 "9f98a5c85284b417f32abf555d2605fdea57b394befd1852c03ae4ac8aa53347"
    end
    if Hardware::CPU.intel?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.2/mint-v0.1.0-rc.2-x86_64-unknown-linux-glibc.tar.gz"
      sha256 "2b9df4b39a1c324a9bf560cd41860033c5a045a277040878f9b4648938e0421e"
    end
  end

  def install
    bin.install "mint"
  end
end
