# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Undistro < Formula
  desc "UnDistro is a vanilla, non-opinionated, and open source Kubernetes distribution"
  homepage "https://undistro.io"
  version "0.34.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.34.0/undistro_0.34.0_darwin_amd64.tar.gz"
      sha256 "9586c343babbe440332a65e6d0255aa795cb5206c5a59617c46b0354c9366842"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.34.0/undistro_0.34.0_darwin_arm64.tar.gz"
      sha256 "e9020564fd26e04feb13ff4bd710bf74fde7d0cbe18fac181027a24916579797"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.34.0/undistro_0.34.0_linux_amd64.tar.gz"
      sha256 "33362fa561a92ed626f99f2c99b96e8afdb27316e58759b1320c60bc6f1d9084"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.34.0/undistro_0.34.0_linux_arm64.tar.gz"
      sha256 "34016eaf8f6be88fed5417ebaa7910b02124935dc1290717300866517abc06cc"
    end
  end

  depends_on "nss"

  def install
    bin.install "undistro"
  end
end
