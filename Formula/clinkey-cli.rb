class ClinkeyCli < Formula
	include Language::Python::Virtualenv
	desc "Command-line generator for secure passwords and secret keys"
	homepage "https://github.com/dim-gggl/clinkey-cli"
	license "MIT"
	url "https://github.com/dim-gggl/clinkey-cli/archive/refs/tags/v1.0.0.tar.gz"
	sha256 "72c1e25ba802174568a884dcc12d3a9f31d39a027460175c9946880c42675ed5"
	depends_on "python@3.12"
	def install
	  virtualenv_install_with_resources
	end
	test do
	  output = shell_output("#{bin}/clinkey --length 12 --type strong")
	  assert_equal 12, output.strip.delete("-_").length
	end
  end
  
  