class Mint < Formula
  desc "CLI tool to generate boilerplate files and directories"
  homepage "https://github.com/saikiranp-24/mint"
  version "0.1.0-rc.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.1/mint-v0.1.0-rc.1-aarch64-apple-darwin.tar.gz"
      sha256 "22f56ee3655a99a432e25d043dd28f140933861adec36d0f726dfe549de4b90d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.1/mint-v0.1.0-rc.1-x86_64-apple-darwin.tar.gz"
      sha256 "d6c00cb248f0c559f4d529068263df9dbfda1d65b3c787b06f744b0e8a2bcffb"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.1/mint-v0.1.0-rc.1-aarch64-unknown-linux-glibc.tar.gz"
      sha256 "d43fb0f323b71d606e64202e6f802c30f76bdb8aa9f1b17439c490266408acd8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.1/mint-v0.1.0-rc.1-x86_64-unknown-linux-glibc.tar.gz"
      sha256 "111b0f11d94d49235c5370e6de4c479fbada9274d04b5942fe65f824485d7382"
    end
  end

  def install
    bin.install "mint"
  end
end
