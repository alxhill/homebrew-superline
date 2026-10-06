class Superline < Formula
  desc "Configurable Powerline implementation in pure Rust"
  homepage "https://github.com/alxhill/superline"
  url "https://github.com/alxhill/superline/releases/download/v0.30.0/superline-0.30.0-aarch64-apple-darwin.tar.gz"
  sha256 "bd0f00ed5d7b653a2f2a33ce2164475abef72bae7cdcf20d8b83b98207ec948e"
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
