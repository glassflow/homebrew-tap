class Tares < Formula
  desc "Data plane for always-on AI agents"
  homepage "https://github.com/glassflow/tares"
  url "https://files.pythonhosted.org/packages/77/25/0235d0606271e7e591b74a3e4e17207eb626e8ea68bddb91e7079346af80/tares-1.51.1.tar.gz"
  sha256 "28e6268f2409627584a5591d3ba043d1eee3918c7be2be4c9ff61c0520579ae1"
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
