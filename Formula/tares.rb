class Tares < Formula
  desc "Data plane for always-on AI agents"
  homepage "https://github.com/glassflow/tares"
  url "https://files.pythonhosted.org/packages/ae/d8/036422aaf8ad89ecf6036cac9cab10447ba006a68995b0e755d99b283ecb/tares-1.52.0.tar.gz"
  sha256 "910f4a777eeb1b3e8cd2d2a46908048fb981c9e1c5bf834a98ebbbd57b256de5"
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
