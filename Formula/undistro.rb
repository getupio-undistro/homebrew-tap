# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Undistro < Formula
  desc "UnDistro is a vanilla, non-opinionated, and open source Kubernetes distribution"
  homepage "https://undistro.io"
  version "0.30.5"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.30.5/undistro_0.30.5_darwin_amd64.tar.gz"
      sha256 "e41917edec9a7a5b986078ab467e92b74dbfe842ce99a98dd0b4877b0d9d6349"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.30.5/undistro_0.30.5_darwin_arm64.tar.gz"
      sha256 "5c21a6ccd318d7d36d330ff44add149c840aed770fbdc590fd0b64b5d3ea002d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.30.5/undistro_0.30.5_linux_amd64.tar.gz"
      sha256 "e8c4815c5186de84bbf301be5d846ebf4caa71407074a0ead3a21f259f5436fd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.30.5/undistro_0.30.5_linux_arm64.tar.gz"
      sha256 "e3517bd7461b08783e0176d22f581136812d3d85fa00069c4bf91a89a659dd74"
    end
  end

  def install
    bin.install "undistro"
  end
end
