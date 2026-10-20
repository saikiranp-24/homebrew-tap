class Mint < Formula
  desc "CLI tool to generate boilerplate files and directories"
  homepage "https://github.com/saikiranp-24/mint"
  version "0.1.0-rc.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.1/mint-v0.1.0-rc.1-aarch64-apple-darwin.tar.gz"
      sha256 "39fe04fab4acf227c80cc14f81487823429df2ec92dc3f66b63655558e340302"
    end
    if Hardware::CPU.intel?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.1/mint-v0.1.0-rc.1-x86_64-apple-darwin.tar.gz"
      sha256 "8164d31356340fdc3011d50fcc76d4f53e24c3608fd0d64e2e4fb8ff3c8b460d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.1/mint-v0.1.0-rc.1-aarch64-unknown-linux-glibc.tar.gz"
      sha256 "426c14838ab9794e5c4a698685b2edf4a1bcc6a76f0e0b5c1056c52a0c8299ef"
    end
    if Hardware::CPU.intel?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.1/mint-v0.1.0-rc.1-x86_64-unknown-linux-glibc.tar.gz"
      sha256 "20fe99a1f142f4a17dfef3fc920c4223890719ccd98ec04b01c034032eea8b79"
    end
  end

  def install
    bin.install "mint"
  end
end
