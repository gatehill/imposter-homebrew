# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.17.0/imposter_0.17.0_macOS_x86_64.tar.gz"
      sha256 "8b7fb7bf39ac7011550523910897469a05f9f254c9f53d64ba6cb25ad39e6ccb"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.17.0/imposter_0.17.0_macOS_arm64.tar.gz"
      sha256 "78a2756039bce32e90645ebe1e89981a374add99df49edaf0b7b74b32df8aef4"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.17.0/imposter_0.17.0_Linux_armv6.tar.gz"
      sha256 "5de311384ae863cad5e90715e2ed3f11d0126cd752862cde3e7b736a119f4ee3"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.17.0/imposter_0.17.0_Linux_x86_64.tar.gz"
      sha256 "1899442095dd92912bfc0648c824da9480741ca540618fb9d2ab8071f647df7d"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.17.0/imposter_0.17.0_Linux_arm64.tar.gz"
      sha256 "7c7dee69713b4ae2ff2e37d112c67dc110e82e625a448e03653ca07e52993c8e"

      def install
        bin.install "imposter"
      end
    end
  end

  def caveats; <<~EOS
    Requires Docker to be installed.
  EOS
  end
end
