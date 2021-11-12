# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Undistro < Formula
  desc "UnDistro is a vanilla, non-opinionated, and open source Kubernetes distribution"
  homepage "https://undistro.io"
  version "0.36.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.36.18/undistro_0.36.18_darwin_amd64.tar.gz"
      sha256 "d3e03ca67c1d43103b9a3a36245e670fd253fb694b314f8d307a6fe1d5f99532"

      def install
        bin.install "undistro"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.36.18/undistro_0.36.18_darwin_arm64.tar.gz"
      sha256 "9f218a2326175eb7c36a362a9650b919848eb8a0b6b4df724668073c555993de"

      def install
        bin.install "undistro"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.36.18/undistro_0.36.18_linux_arm64.tar.gz"
      sha256 "9f462e33f7230ef87a7b79420eca46b901e0b05d9217a778bfb390ecd4cdc827"

      def install
        bin.install "undistro"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.36.18/undistro_0.36.18_linux_amd64.tar.gz"
      sha256 "2a14db0aa79921bf51ec1e5710988175376132c0ad13bdf27a55a98694f57764"

      def install
        bin.install "undistro"
      end
    end
  end

  depends_on "nss"
end
