# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Undistro < Formula
  desc "UnDistro is a vanilla, non-opinionated, and open source Kubernetes distribution"
  homepage "https://undistro.io"
  version "0.31.4"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.31.4/undistro_0.31.4_darwin_amd64.tar.gz"
      sha256 "9b8e36d1a8462b36d84d69d1d78183ee80f34456f6b374bf7783d0494d0504eb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.31.4/undistro_0.31.4_darwin_arm64.tar.gz"
      sha256 "4d92662182c2456a6a519c99b1a0cff4e4b75f6051d2eab4ab9395f8a04240f1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.31.4/undistro_0.31.4_linux_amd64.tar.gz"
      sha256 "8d488c3a6de46a9ad4251316feb40e676101b73accc8c338af5f2053fd2161d4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.31.4/undistro_0.31.4_linux_arm64.tar.gz"
      sha256 "ebb0b869bffb9c559ee241d9367eded100869103339616efcfe69a9b9a9bd859"
    end
  end

  depends_on "nss"

  def install
    bin.install "undistro"
  end
end
