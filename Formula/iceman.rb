class Iceman < Formula
  desc "Tools for Apache Iceberg"
  homepage "https://github.com/rchowell/iceman"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/rchowell/iceman/releases/download/v#{version}/iceman-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "741cab1c373b5c78ce25a2d373f3015c96486f0a793bb59be95560bed9f66e36"
    end
  end

  def install
    bin.install "iceman"
  end

  test do
    system "#{bin}/iceman", "--version"
  end
end
