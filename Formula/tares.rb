class Tares < Formula
  desc "Data plane for always-on AI agents"
  homepage "https://github.com/glassflow/tares"
  url "https://files.pythonhosted.org/packages/e9/77/730e548fc302ee9a6eb4077b5aae073b1a0f1dc238736e0f0d11c814bbd4/tares-1.49.0.tar.gz"
  sha256 "8705e237b7a2748edb7c49d2218e9f53e3ef0ce35f59b087368fb63d0b6d7a4b"
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
