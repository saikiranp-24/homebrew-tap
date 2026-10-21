class Mint < Formula
  desc "CLI tool to generate boilerplate files and directories"
  homepage "https://github.com/saikiranp-24/mint"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0/mint-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "72e03a00de76041cc922da8f306910ffaa4825a1b48a8680f7c84af61abf351b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0/mint-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "aafbb8d201f7cc11a70866e87f020b85bb9fd3aad96934403618f3a200194515"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0/mint-v0.1.0-aarch64-unknown-linux-glibc.tar.gz"
      sha256 "be6a04f3335e9c11cf556606acd41ce16d7ef7f60209cd5e106981aef027081d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0/mint-v0.1.0-x86_64-unknown-linux-glibc.tar.gz"
      sha256 "56f00859d6f8c4bc12cac099ab416da41df48a82c9369fa41e5442cd785cd7ed"
    end
  end

  def install
    bin.install "mint"
  end
end
