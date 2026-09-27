class Superline < Formula
  desc "Configurable Powerline implementation in pure Rust"
  homepage "https://github.com/alxhill/superline"
  url "https://github.com/alxhill/superline/releases/download/v0.22.1/superline-0.22.1-aarch64-apple-darwin.tar.gz"
  sha256 "22056e5611e42d4c732383ee9c1bf4dc72732842e392bfcd3c8fe15d3a5f6f21"
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
