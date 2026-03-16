class Distil < Formula
  desc "Mount your Distil notes as a local folder"
  homepage "https://distil.so"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.distil.so/v#{version}/distil-aarch64-apple-darwin"
      sha256 "836f558b4ae4091a25b39addfdd3d84e32c077699d361344117713ea7706a6c9"
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
