class Context < Formula
    desc "Context is a tool for keeping context documentation fresh"
    homepage "https://github.com/rchowell/context"
    license "Apache-2.0"
    version "0.1.0"
  
    on_macos do
      on_arm do
        url "https://github.com/rchowell/context/releases/download/v0.1.0/context-0.1.0-aarch64-apple-darwin.tar.gz"
        sha256 "b2d4510c13759f8480aa7beaf64528fc9b463bf98fbdabbf8658a7e954fcf8b9"
      end
    #   on_intel do
    #     url "https://github.com/rchowell/context/releases/download/v0.1.0/context-0.1.0-x86_64-apple-darwin.tar.gz"
    #     sha256 "INTEL_SHA_HERE"
    #   end
    end
  
    def install
      bin.install "context"
    end
  
    test do
      system bin/"context", "--version"
    end
  end