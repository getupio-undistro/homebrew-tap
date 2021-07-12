# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Undistro < Formula
  desc "UnDistro is a vanilla, non-opinionated, and open source Kubernetes distribution"
  homepage "https://undistro.io"
  version "0.31.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.31.2/undistro_0.31.2_darwin_amd64.tar.gz"
      sha256 "d4fed588444592245f7a00f029d3fdc23273a65ada70419262938bf67713fb81"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.31.2/undistro_0.31.2_darwin_arm64.tar.gz"
      sha256 "0555a2670fa90e781281962e32b0efc6be459e9ad3e65172732dd5e5d4d04ab0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.31.2/undistro_0.31.2_linux_amd64.tar.gz"
      sha256 "e03e26a4f27107f5450a4d8fd34d4cf6b4353a1f91c73ea0c4a4ea8230280a63"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.31.2/undistro_0.31.2_linux_arm64.tar.gz"
      sha256 "0b0fbe1e28c00804c06b5b2d1992cbbc4b8e159c44fac3c275fe803325a44863"
    end
  end

  def install
    bin.install "undistro"
  end
end
