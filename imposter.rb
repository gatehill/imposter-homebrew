# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://github.com/gatehill/imposter-cli"
  version "0.6.5"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.6.5/imposter_0.6.5_macOS_x86_64.tar.gz"
      sha256 "403dc25d3e52fec8c5d49874140302d730c436e60e7e19fbc0ccb94a206faf35"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.6.5/imposter_0.6.5_macOS_arm64.tar.gz"
      sha256 "c4f13a6e3792333e0f28830f2f1c58d27e2ee3dedb33ae9c596b6fd899a17385"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.6.5/imposter_0.6.5_Linux_x86_64.tar.gz"
      sha256 "2f0c714cc6e42351b26a5de54386f840a860d85a39ba316bfd795249e35a2191"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.6.5/imposter_0.6.5_Linux_armv6.tar.gz"
      sha256 "5a346345a7b945f759c0d6f7fd591906eb4e6d2af0f456c72f1139c68e7fe65e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.6.5/imposter_0.6.5_Linux_arm64.tar.gz"
      sha256 "345da113c1b12b1bc0ae5263b386732ebe1fe3eebbea4981584b7f339c11f709"
    end
  end

  def install
    bin.install "imposter"
  end

  def caveats; <<~EOS
    Requires Docker to be installed.
  EOS
  end
end
