class Ghostcfg < Formula
  include Language::Python::Virtualenv

  desc "Interactive TUI for Ghostty terminal configuration"
  homepage "https://github.com/samkleespies/ghostcfg"
  url "https://pypi.io/packages/source/g/ghostcfg/ghostcfg-0.1.0.tar.gz"
  sha256 "PLACEHOLDER — replace with real SHA256 after publishing to PyPI"
  license "MIT"

  depends_on "python@3.12"

  resource "textual" do
    url "https://pypi.io/packages/source/t/textual/textual-1.0.0.tar.gz"
    sha256 "PLACEHOLDER"
  end

  # textual dependencies will be resolved automatically by pip
  # but you may need to pin them here for reproducibility

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ghostcfg", shell_output("#{bin}/ghostcfg --help 2>&1", 1)
  end
end
