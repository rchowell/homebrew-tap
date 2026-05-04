class Iceman < Formula
  desc "Tools for Apache Iceberg"
  homepage "https://github.com/rchowell/iceman"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/rchowell/iceman/releases/download/v#{version}/iceman-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a3e9149efc7df425a2163d0f7950fe0cbe07127859db662a8a4f1b8b731bbe35"
    end
  end

  def install
    bin.install "iceman"
  end

  test do
    system "#{bin}/iceman", "--version"
  end
end
