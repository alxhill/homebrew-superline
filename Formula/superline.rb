class Superline < Formula
  desc "Configurable Powerline implementation in pure Rust"
  homepage "https://github.com/alxhill/superline"
  url "https://github.com/alxhill/superline/releases/download/v0.13.1/superline-0.13.1-aarch64-apple-darwin.tar.gz"
  sha256 "e3e4d2919c6de1384d5bdaf7ff7887bfc5f6eefd9ed262508ec46086c5505ab3"
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
