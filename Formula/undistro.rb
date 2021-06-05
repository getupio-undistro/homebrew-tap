# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Undistro < Formula
  desc "UnDistro is a vanilla, non-opinionated, and open source Kubernetes distribution"
  homepage "https://undistro.io"
  version "0.27.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/getupio-undistro/undistro/releases/download/v0.27.2/undistro_0.27.2_darwin_amd64.tar.gz"
    sha256 "68039a0dc5c213b3178c43db7d5a2f51f6e7ce1f972b6111d29fccd1c1647cc7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/getupio-undistro/undistro/releases/download/v0.27.2/undistro_0.27.2_darwin_arm64.tar.gz"
    sha256 "21a31432c3e08aa5cdfb8b7a21b50f06a0af0564a81eda9c48ade329ed6ab423"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/getupio-undistro/undistro/releases/download/v0.27.2/undistro_0.27.2_linux_amd64.tar.gz"
    sha256 "ca910b691c23115d3fe49e4cb4137b0d60e2db518ec19f620728fe857dc8c957"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/getupio-undistro/undistro/releases/download/v0.27.2/undistro_0.27.2_linux_arm64.tar.gz"
    sha256 "1250d2981a0648d38e6ce612d55dd0041c8bda632231702e2fa2dd022c4ae92e"
  end

  def install
    bin.install "undistro"
  end
end
