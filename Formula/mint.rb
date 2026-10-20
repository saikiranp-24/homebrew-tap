class Mint < Formula
  desc "CLI tool to generate boilerplate files and directories"
  homepage "https://github.com/saikiranp-24/mint"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0/mint-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "68ad49e8b05ad3d5470898183301ac194ff367cbbb0cb8d39160504dab264481"
    end
    if Hardware::CPU.intel?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0/mint-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "45d32016b5753e471fe1dc762e94952c99bd04a2a082218568fbd5070a0bbc85"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0/mint-v0.1.0-aarch64-unknown-linux-glibc.tar.gz"
      sha256 "621d62abe35a79ea7faa05f145d2716d449a0f0c1b5c678a3bdff217c431db30"
    end
    if Hardware::CPU.intel?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0/mint-v0.1.0-x86_64-unknown-linux-glibc.tar.gz"
      sha256 "db95f3dca56715d1303bab059a8e113eb6076a802526048811b971d217d6a400"
    end
  end

  def install
    bin.install "mint"
  end
end
