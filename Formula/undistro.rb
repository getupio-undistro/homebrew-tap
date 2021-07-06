# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Undistro < Formula
  desc "UnDistro is a vanilla, non-opinionated, and open source Kubernetes distribution"
  homepage "https://undistro.io"
  version "0.31.1"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.31.1/undistro_0.31.1_darwin_amd64.tar.gz"
      sha256 "c63804206258da53dc8d868a1cd87ec95ade01d70446a304b907ca1eed145673"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.31.1/undistro_0.31.1_darwin_arm64.tar.gz"
      sha256 "c04f495370e56d4ccac66424e123e6962eea3891efa8f2135b0c6a1d905f4412"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.31.1/undistro_0.31.1_linux_amd64.tar.gz"
      sha256 "b8ddb434e388f25d04525085f5904085d1790470645befc2ac28565554c8b663"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.31.1/undistro_0.31.1_linux_arm64.tar.gz"
      sha256 "8f5489fb9c425f82ff802f9a7596162fbac7354540530631ca7e6b61641d7a94"
    end
  end

  def install
    bin.install "undistro"
  end
end
