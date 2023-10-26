# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "0.34.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.34.0/imposter_0.34.0_darwin_amd64.tar.gz"
      sha256 "acea020a5e09c4c749e38889d7ecf6a42e79d098887131145555125d3d7d0b5f"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.34.0/imposter_0.34.0_darwin_arm64.tar.gz"
      sha256 "0f7d7e9761e3cd336870f7e7dcdedc41bbdf1e0e32c2d4c3df6c994764e106fe"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.34.0/imposter_0.34.0_linux_armv6.tar.gz"
      sha256 "968b859ca6abc73a5ca6bbd1ddcf1b91c3dbb891079db1d08a454c46a2aa6d58"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.34.0/imposter_0.34.0_linux_amd64.tar.gz"
      sha256 "c83fc5fc509654f2006d480d89e3630c4df560d5f8ed7f5fb33f1e215110983a"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.34.0/imposter_0.34.0_linux_arm64.tar.gz"
      sha256 "97f7bcad7780c3b11ef45ae2387b1e1b2be9eed6c0d9968c1ad48a60324de3e7"

      def install
        bin.install "imposter"
      end
    end
  end

  def caveats
    <<~EOS
      Requires Docker to be installed.
    EOS
  end
end
