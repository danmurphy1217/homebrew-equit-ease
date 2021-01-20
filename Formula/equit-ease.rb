class EquitEase < Formula
  include Language::Python::Virtualenv

  desc "The easiest way to retrieve equity data from the command line. Search Stocks, Options, Cryptocurrencies and other digital assets, and more in a manner of seconds."
  homepage "https://pypi.org/project/EquitEase/"
  url "https://files.pythonhosted.org/packages/c6/5b/cd0de298b3e0f2e121a38e66b3c42c5b29a94cada7b42b45d6bc70e41f29/EquitEase-0.0.4.tar.gz"
  sha256 "2866cbf1b0cd1da8accae4820d731a70e165afe610446450d447075e76fbd6b7"
  license "MIT"

  depends_on "python@3.9" 

  resource "PyInquirer" do
    url "https://files.pythonhosted.org/packages/fb/4c/434b7c454010a284b49d6f1d446fe8dc5960415613d8c0225b9e2efb6724/PyInquirer-1.0.3.tar.gz"
    sha256 "c9a92d68d7727fbd886a7908c08fd9e9773e5dc211bf5cbf836ba90d366dee51"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/6b/47/c14abc08432ab22dc18b9892252efaf005ab44066de871e72a38d6af464b/requests-2.25.1.tar.gz"
    sha256 "27973dd4a904a4f13b263a19c866c13b92a39ed1c964655f025f3f8d3d75b804"
  end

  def install
    virtualenv_install_with_resources 
  end
 
  test do
    system bin/"equity", "--help"
  end
end
