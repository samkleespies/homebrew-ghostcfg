class Ghostcfg < Formula
  include Language::Python::Virtualenv

  desc "Interactive TUI for Ghostty terminal configuration"
  homepage "https://github.com/samkleespies/ghostcfg"
  url "https://files.pythonhosted.org/packages/source/g/ghostcfg/ghostcfg-0.1.0.tar.gz"
  sha256 "38841cac3e7e6f703eb4f6ef7969fe9ea6aa3fd606b833e0dd32854268a8f22a"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_create(libexec, "python3.12")
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ghostcfg --version 2>&1", 2)
  end
end
