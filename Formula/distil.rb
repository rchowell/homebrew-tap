class Distil < Formula
  desc "Mount your Distil notes as a local folder"
  homepage "https://distil.so"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.distil.so/v#{version}/distil-aarch64-apple-darwin"
      sha256 "f88cc5fbd4fa01a83ebd9549b484dc95a4a0f7af51883f676cd32864e601fb81"
    end
  end

  depends_on :macos
  depends_on cask: "fuse-t"

  def install
    binary = Dir.glob("distil-*").first || "distil"
    bin.install binary => "distil"
  end

  test do
    assert_match "distil", shell_output("#{bin}/distil --help")
  end

  def caveats
    <<~EOS
      Quick start:
        distil login     Sign in to your Distil account
        distil init      Initialize local config
        distil mount     Mount your notes as a local folder

      Your files will appear at ~/.distil/<username>/files/

      FUSE-T is required and should have been installed automatically.
      If you see mount errors, verify FUSE-T is installed:
        brew info --cask fuse-t
    EOS
  end
end
