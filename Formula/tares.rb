class Tares < Formula
  desc "Data plane for always-on AI agents"
  homepage "https://github.com/glassflow/tares"
  url "https://files.pythonhosted.org/packages/29/f6/0646d879f11cc5c2945c2543a8a9530c9fb4c229694d234681d2279919da/tares-1.55.0.tar.gz"
  sha256 "3a9952bda51fd9ff9be609b8995b9770e9bbb3b92a379147107fd23502ea33bf"
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
