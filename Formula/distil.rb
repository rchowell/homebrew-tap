class Distil < Formula
  desc "Mount your Distil notes as a local folder"
  homepage "https://distil.so"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.distil.so/v#{version}/distil-aarch64-apple-darwin"
      sha256 "085ae7287e923a9dfb0931142158bd5efcfab1931404a7a75ed770fd6c3a337a"
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
