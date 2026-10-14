class Tares < Formula
  desc "Data plane for always-on AI agents"
  homepage "https://tares-glassflow.com"
  url "https://files.pythonhosted.org/packages/68/a7/d2a5a654d97f978197a0b996f83a360cab72126a345a98a17b8fe57be38f/tares-1.45.0.tar.gz"
  sha256 "70ecf9284c91fa7c9eb8f81f4198301f095af264b15d835c6b0e7e7c5e47a851"
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
