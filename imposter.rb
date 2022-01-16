# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "0.10.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.10.1/imposter_0.10.1_macOS_x86_64.tar.gz"
      sha256 "f8a2fc3d0051d3bdbfaa52eb4b306ca8758914748b3f035e20418f9b0ba83e31"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.10.1/imposter_0.10.1_macOS_arm64.tar.gz"
      sha256 "fd8881e562c9dabe39055cda89220c279f261b27bc2e3fa270b374de68c7457f"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.10.1/imposter_0.10.1_Linux_armv6.tar.gz"
      sha256 "689e953dc4a98d370ae4e3d077711ade10427dca6dda9d2e244e1028f334d06a"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.10.1/imposter_0.10.1_Linux_x86_64.tar.gz"
      sha256 "ba7a001d14071b4d6ef8c33a2d7f10ba5350ac173849cae83eb312aa708be823"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.10.1/imposter_0.10.1_Linux_arm64.tar.gz"
      sha256 "4f11e0a5677ff5249dd462b3890e9b7893addcecaac6a921114f3ebc7772bd55"

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
