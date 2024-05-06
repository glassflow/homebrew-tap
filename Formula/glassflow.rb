# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Glassflow < Formula
  desc ""
  homepage "https://www.glassflow.dev/"
  version "1.1.24"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/glassflow/cli/releases/download/v1.1.24/glassflow-cli-1.1.24-darwin-amd64.tar.gz"
      sha256 "c8cde0a29efcfd97655da49c06914276f3d1b06d738491ea303405b9eaafbde9"

      def install
        bin.install "glassflow"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/glassflow/cli/releases/download/v1.1.24/glassflow-cli-1.1.24-darwin-arm64.tar.gz"
      sha256 "8f7ddc14fd7faa07744404e0b03fc0a65671affc40af1dd351d310bebd85c69c"

      def install
        bin.install "glassflow"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/glassflow/cli/releases/download/v1.1.24/glassflow-cli-1.1.24-linux-amd64.tar.gz"
      sha256 "3153e7683b244cd76f7f93eafd6f8ec8772925d473759ce1f143679fe6ba9d43"

      def install
        bin.install "glassflow"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/glassflow/cli/releases/download/v1.1.24/glassflow-cli-1.1.24-linux-armv6.tar.gz"
      sha256 "be4ef3f7bfbcaed6faa07add0655b97545f53c911fe40f7a6ed2cb84e856b108"

      def install
        bin.install "glassflow"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/glassflow/cli/releases/download/v1.1.24/glassflow-cli-1.1.24-linux-arm64.tar.gz"
      sha256 "b505da583d8b672f446fa2c466a46b4da317353d4f7082e01a3dd8ad7e519970"

      def install
        bin.install "glassflow"
      end
    end
  end
end
