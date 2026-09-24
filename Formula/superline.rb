class Superline < Formula
  desc "Configurable Powerline implementation in pure Rust"
  homepage "https://github.com/alxhill/superline"
  url "https://github.com/alxhill/superline/releases/download/v0.20.0/superline-0.20.0-aarch64-apple-darwin.tar.gz"
  sha256 "308b219f4ee06ebe27bd25dea510bbef4784b5626c33fb2390ccd1e6e8a63d9c"
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
