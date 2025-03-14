# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsSsmConnect < Formula
  desc "Connect to EC2 instances via AWS SSM with automatic SSO authentication"
  homepage "https://github.com/shushpan/aws-ssm-connect"
  version "0.1.2-test"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shushpan/aws-ssm-connect/releases/download/v0.1.2-test/aws-ssm-connect_Darwin_x86_64.tar.gz"
      sha256 "6769aaa5b284f17a850961d7f451a7c8e685808d80e3b1a902b9cf283fe23452"

      def install
        bin.install "aws-ssm-connect"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shushpan/aws-ssm-connect/releases/download/v0.1.2-test/aws-ssm-connect_Darwin_arm64.tar.gz"
      sha256 "f983941e115b50601876be0f6483d6152955f6144626f627db33197e12d60de1"

      def install
        bin.install "aws-ssm-connect"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shushpan/aws-ssm-connect/releases/download/v0.1.2-test/aws-ssm-connect_Linux_x86_64.tar.gz"
        sha256 "c7c6fd237d480376bb9f157faa9b3788cb6619fe889d9dc15ce662f482550525"

        def install
          bin.install "aws-ssm-connect"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shushpan/aws-ssm-connect/releases/download/v0.1.2-test/aws-ssm-connect_Linux_arm64.tar.gz"
        sha256 "b65a2ed8207aa00499edc4a7c1645cbcabd8c3a423cf88ef4a0a79e3fdf978be"

        def install
          bin.install "aws-ssm-connect"
        end
      end
    end
  end

  test do
    system "#{bin}/aws-ssm-connect --help"
  end
end
