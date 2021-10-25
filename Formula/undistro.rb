# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Undistro < Formula
  desc "UnDistro is a vanilla, non-opinionated, and open source Kubernetes distribution"
  homepage "https://undistro.io"
  version "0.36.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.36.15/undistro_0.36.15_darwin_arm64.tar.gz"
      sha256 "66bbd3c7b49651f88ba6054cf6f9150411178fac05485f38fc80fca685e75262"

      def install
        bin.install "undistro"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.36.15/undistro_0.36.15_darwin_amd64.tar.gz"
      sha256 "5981bd9153c1ccb640dbb655982cbd0649f283f0dc37ec0d593195bcf1d5c5b3"

      def install
        bin.install "undistro"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.36.15/undistro_0.36.15_linux_arm64.tar.gz"
      sha256 "59909cb6e273854bc658c5766af0d502873b1585939e4cb02174b6554fb612f9"

      def install
        bin.install "undistro"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/getupio-undistro/undistro/releases/download/v0.36.15/undistro_0.36.15_linux_amd64.tar.gz"
      sha256 "e1f3459c07d5c58d60825c21fd7945ae6b59c5716684e3ce64ceb34b039776c7"

      def install
        bin.install "undistro"
      end
    end
  end

  depends_on "nss"
end
