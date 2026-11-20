class Tares < Formula
  desc "Data plane for always-on AI agents"
  homepage "https://github.com/glassflow/tares"
  url "https://files.pythonhosted.org/packages/43/78/d799501fc9ce6ddaa20273682ac4f997adb893bb36f6a03a7c3f4c24346e/tares-1.60.0.tar.gz"
  sha256 "1ea188a3cf253fc2bebd0a163acbba800a5083447785905a74a6bbf2a9d27609"
  license "MIT"

  depends_on "python@3.14"

  # The prebuilt arm64 wheels (jiter, ...) have no Mach-O header room for
  # Homebrew to rewrite their @rpath dylib IDs, which fails the install.
  preserve_rpath

  def install
    system formula_opt_bin("python@3.14")/"python3.14", "-m", "venv", libexec
    system libexec/"bin/pip", "install", "--no-cache-dir", "--only-binary=:all:", "tares==#{version}"
    %w[tares taresd tares-mcp].each { |c| bin.install_symlink libexec/"bin"/c }
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tares --version")
    system bin/"tares", "--help"
  end
end
