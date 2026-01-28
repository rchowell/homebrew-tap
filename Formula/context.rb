class Context < Formula
    desc "Context is a tool for keeping context documentation fresh"
    homepage "https://github.com/rchowell/context"
    url "https://github.com/rchowell/context/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "c7d65ce4f4a9795e73bc871be19066c5d6f31b957aca14ec72eecd4e8bb19fdb"
    license "Apache-2.0"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      system bin/"context", "--version"
    end
end