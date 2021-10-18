# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Undistro < Formula
  desc "UnDistro is a vanilla, non-opinionated, and open source Kubernetes distribution"
  homepage "https://undistro.io"
  version "0.36.8"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.36.8/undistro_0.36.8_darwin_arm64.tar.gz"
      sha256 "ed168961f20ce9039402adaa8853e8ddb85e050972e203672f330a071d4399e8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.36.8/undistro_0.36.8_darwin_amd64.tar.gz"
      sha256 "da0c8c72ab67fb4c2550c4a219feea487b5b893acb28ed0a9bb7a249fc90ab0d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.36.8/undistro_0.36.8_linux_amd64.tar.gz"
      sha256 "4adbd0ccf8955e98aba7a3d1ba54bea74c0932bd62e76359090b0c67b7624de9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.36.8/undistro_0.36.8_linux_arm64.tar.gz"
      sha256 "040365bbf73468e4f0615f0127e938cf8926a62330fbe62f7b4279c508466227"
    end
  end

  depends_on "nss"

  def install
    bin.install "undistro"
  end
end
