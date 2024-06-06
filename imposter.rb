# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "0.42.1"

  on_macos do
    on_intel do
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.42.1/imposter_0.42.1_darwin_amd64.tar.gz"
      sha256 "b8728cf1cc48a4a301d86ce676b62439b530d65d30e1c23ceaf1591c1e75ef13"

      def install
        bin.install "imposter"
      end
    end
    on_arm do
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.42.1/imposter_0.42.1_darwin_arm64.tar.gz"
      sha256 "66f4a9e2c663cdeaa87f01b74e57e9bf01972b270e152e0cb1d719a8e7a6aadf"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gatehill/imposter-cli/releases/download/v0.42.1/imposter_0.42.1_linux_amd64.tar.gz"
        sha256 "4f9747a0c0067435e5dafe817658c0c8600f6a6060ec1f7932997acba98a27c3"

        def install
          bin.install "imposter"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/gatehill/imposter-cli/releases/download/v0.42.1/imposter_0.42.1_linux_armv6.tar.gz"
        sha256 "d87f02c0bcd10aea518b42793087cd0d802c0d146f41961f198aa8cad2fcfd77"

        def install
          bin.install "imposter"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gatehill/imposter-cli/releases/download/v0.42.1/imposter_0.42.1_linux_arm64.tar.gz"
        sha256 "f68d2a9113b40ddb4c4466f7fa04e092aaa5928346f6bf2fe1979f5c5c6484a7"

        def install
          bin.install "imposter"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Requires Docker to be installed.
    EOS
  end
end
