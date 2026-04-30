class Iceman < Formula
  desc "Tools for Apache Iceberg"
  homepage "https://github.com/rchowell/iceman"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/rchowell/iceman/releases/download/v#{version}/iceman-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "<ARM_SHA256>"
    end
  end

  def install
    bin.install "iceman"
  end

  test do
    system "#{bin}/iceman", "--version"
  end
end

