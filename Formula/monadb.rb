# typed: false
# frozen_string_literal: true

# Install: brew tap rchowell/tap && brew install monadb
# Runs the `monadb` interactive SQL shell.
class Monadb < Formula
  desc "Embedded document database with a SQL shell"
  homepage "https://github.com/rchowell/MonaDB"
  license "Apache-2.0"
  version "0.1.0"

  BASE_URL = "https://github.com/rchowell/MonaDB/releases/download/v0.1.0"

  on_macos do
    on_arm do
      url "#{BASE_URL}/monadb-aarch64-apple-darwin.tar.gz"
      sha256 "b8c99a8e2b2dce7b40acd7c62909385a49fc9d689ca3df6299860cfe412c48f4"
    end
    on_intel do
      url "#{BASE_URL}/monadb-x86_64-apple-darwin.tar.gz"
      sha256 "028f54f8c45373e46772487de9c02edc1a6a3b8a49a8217bcb7937a41a1fb360"
    end
  end

  on_linux do
    on_arm do
      url "#{BASE_URL}/monadb-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d72e5af55df2f4ba49e8da2267938591fae2d8485bdfd015fe8ba46f1463ad2"
    end
    on_intel do
      url "#{BASE_URL}/monadb-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d1db72eec12f0e24ca53f10f9905201380cf84cd1e0c087211863749e510765"
    end
  end

  def install
    bin.install "monadb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/monadb --version")
  end
end
