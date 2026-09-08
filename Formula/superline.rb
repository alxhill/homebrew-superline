class Superline < Formula
  desc "Configurable Powerline implementation in pure Rust"
  homepage "https://github.com/alxhill/superline"
  url "https://github.com/alxhill/superline/releases/download/v0.10.5/superline-0.10.5-aarch64-apple-darwin.tar.gz"
  sha256 "2213462d5b3e92ca83f029adbd9b8e7c39711be6dd63b0c2be2410ca6d889b77"
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
