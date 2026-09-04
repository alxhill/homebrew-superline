class Superline < Formula
  desc "Configurable Powerline implementation in pure Rust"
  homepage "https://github.com/alxhill/superline"
  url "https://github.com/alxhill/superline/releases/download/v0.9.2/superline-0.9.2-aarch64-apple-darwin.tar.gz"
  sha256 "7e06fa16fb1dc03e1c996d99fbf57df0ff46d7b9e323f4cdaa5b648e44fc1f55"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "superline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/superline --version")
    assert_match "function _update_ps1", shell_output("#{bin}/superline init bash")
  end
end
