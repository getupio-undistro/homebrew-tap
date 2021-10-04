# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Undistro < Formula
  desc "UnDistro is a vanilla, non-opinionated, and open source Kubernetes distribution"
  homepage "https://undistro.io"
  version "0.35.1"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.35.1/undistro_0.35.1_darwin_amd64.tar.gz"
      sha256 "6ccc2649b96d8db40be0b5f3d91c5be4d4c455c82f4c72f8c22de96d1e40aba2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.35.1/undistro_0.35.1_darwin_arm64.tar.gz"
      sha256 "fcc28fff336baccb7c36d23fa024f20de4f553b97d7948eda3f3aa86ba600a71"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.35.1/undistro_0.35.1_linux_amd64.tar.gz"
      sha256 "7aef3c1e93ad88a0c9a99d89c8a4070c0f537825cbe829eb96e3cb0e63df4783"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.35.1/undistro_0.35.1_linux_arm64.tar.gz"
      sha256 "795cfa571cc2df989a2e5da4c753e897d51a28d3ec92f8e56514aad537db8fa2"
    end
  end

  depends_on "nss"

  def install
    bin.install "undistro"
  end
end
