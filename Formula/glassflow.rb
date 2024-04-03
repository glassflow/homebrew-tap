# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Glassflow < Formula
  desc ""
  homepage "https://www.glassflow.dev/"
  version "1.0.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/glassflow/cli/releases/download/v1.0.17/glassflow-cli-1.0.17-darwin-amd64.tar.gz"
      sha256 "d374c082265e245977bb68805abd15527463d6adb421c7a4d78938ec324946c3"

      def install
        bin.install "glassflow"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/glassflow/cli/releases/download/v1.0.17/glassflow-cli-1.0.17-darwin-arm64.tar.gz"
      sha256 "9add0681bfac858f6d739739c1c5add542ac963ee3f2f085cd9f870825e20d03"

      def install
        bin.install "glassflow"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/glassflow/cli/releases/download/v1.0.17/glassflow-cli-1.0.17-linux-amd64.tar.gz"
      sha256 "40b39ceefbb46fc0a72284c73800a4dcd25bac91632ea3c3b6901fa32888e51f"

      def install
        bin.install "glassflow"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/glassflow/cli/releases/download/v1.0.17/glassflow-cli-1.0.17-linux-armv6.tar.gz"
      sha256 "901a8992c271acc29ef674162dba27a6d66db19ca941cbc46b98f27570232b01"

      def install
        bin.install "glassflow"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/glassflow/cli/releases/download/v1.0.17/glassflow-cli-1.0.17-linux-arm64.tar.gz"
      sha256 "8507267838f9e4d01079dd8d1992b541918d7e6fd75da4154bd47158ad338854"

      def install
        bin.install "glassflow"
      end
    end
  end
end
