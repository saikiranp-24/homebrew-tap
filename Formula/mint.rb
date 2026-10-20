class Mint < Formula
  desc "CLI tool to generate boilerplate files and directories"
  homepage "https://github.com/saikiranp-24/mint"
  version "0.1.0-rc.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.2/mint-v0.1.0-rc.2-aarch64-apple-darwin.tar.gz"
      sha256 "ce2191d90840679fd1a18c893ae80e4cac0626d6c490e153774d34e4efecf7ad"
    end
    if Hardware::CPU.intel?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.2/mint-v0.1.0-rc.2-x86_64-apple-darwin.tar.gz"
      sha256 "8fe3ca714c92ee2520ffd8e91a03dd2c7fe94512424f84bdf65653637389b1e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.2/mint-v0.1.0-rc.2-aarch64-unknown-linux-glibc.tar.gz"
      sha256 "773d72c9b37ff7557d69dcdf8e741913136c2280510b111fcdd6bfb706a5c8d8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/saikiranp-24/mint/releases/download/v0.1.0-rc.2/mint-v0.1.0-rc.2-x86_64-unknown-linux-glibc.tar.gz"
      sha256 "2fb499e4222e3f23c00adf28d3d86a66cbec5a9a8e0099c8d31546e4ed10fecc"
    end
  end

  def install
    bin.install "mint"
  end
end
