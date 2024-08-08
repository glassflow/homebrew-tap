# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Glassflow < Formula
  desc ""
  homepage "https://www.glassflow.dev/"
  version "1.3.10"

  on_macos do
    on_intel do
      url "https://github.com/glassflow/cli/releases/download/v1.3.10/glassflow-cli-1.3.10-darwin-amd64.tar.gz"
      sha256 "4827ca8a65ea8b1a9173f1515bb8d7114faee8bc1d591bec23dbe35950427d07"

      def install
        bin.install "glassflow"
      end
    end
    on_arm do
      url "https://github.com/glassflow/cli/releases/download/v1.3.10/glassflow-cli-1.3.10-darwin-arm64.tar.gz"
      sha256 "b6662d6cf1b60f09bd48791fbae17501860602c4aed01448bb294ed8e494479a"

      def install
        bin.install "glassflow"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/glassflow/cli/releases/download/v1.3.10/glassflow-cli-1.3.10-linux-amd64.tar.gz"
        sha256 "f29b0b5a0024ad0d47aa8c7a7078ac982ad4790de74b5b1f2f2d838dc226f46e"

        def install
          bin.install "glassflow"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/glassflow/cli/releases/download/v1.3.10/glassflow-cli-1.3.10-linux-armv6.tar.gz"
        sha256 "e210b721b0f6d1b1fbbe2c919e76a78af755f2f90efbaed133062b442efdbc53"

        def install
          bin.install "glassflow"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/glassflow/cli/releases/download/v1.3.10/glassflow-cli-1.3.10-linux-arm64.tar.gz"
        sha256 "1643661efd1aac4aed56f3ce113c91b0d71696dad814957377edc1f5b2bb0d46"

        def install
          bin.install "glassflow"
        end
      end
    end
  end
end
