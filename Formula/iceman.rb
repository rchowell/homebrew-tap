class Iceman < Formula
  desc "Tools for Apache Iceberg"
  homepage "https://github.com/rchowell/iceman"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/rchowell/iceman/releases/download/v#{version}/iceman-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7515bf959b73b956ceb967351c7e299cbb3668a53d35f9c770eb72e00d93ced6"
    end
  end

  def install
    bin.install "iceman"
  end

  test do
    system "#{bin}/iceman", "--version"
  end
end
