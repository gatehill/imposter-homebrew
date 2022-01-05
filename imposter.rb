# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.8.2/imposter_0.8.2_macOS_x86_64.tar.gz"
      sha256 "372bbb8cf1f7656a1a37ec18c3bc551d1dc6836fcb79cb710d6e791d8f9b44b5"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.8.2/imposter_0.8.2_macOS_arm64.tar.gz"
      sha256 "183de2ea578aec69e49bbe48eb63fc531d1bffcfa92cd3d38a2d562a091e7215"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.8.2/imposter_0.8.2_Linux_arm64.tar.gz"
      sha256 "add93fcdc61c1887b82d2726db6d13cb1b007d66429b2235e2fceecb4e20b3f5"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.8.2/imposter_0.8.2_Linux_x86_64.tar.gz"
      sha256 "5b09f5bdf79d9ba8a0189dca3b36d40fa38c5a36ab8d29f05084a63dd1a6d452"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.8.2/imposter_0.8.2_Linux_armv6.tar.gz"
      sha256 "cfe33aced7a5b3197e7cd8790f1b547403fd3a60498439b2d1e0a21e8aef557c"

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
