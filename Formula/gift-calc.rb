class GiftCalc < Formula
  desc "CLI tool that calculates gift amounts with configurable randomness"
  homepage "https://github.com/david-nossebro/gift-calc"
  url "https://registry.npmjs.org/gift-calc/latest"
  sha256 :no_check
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Gift Calculator", shell_output("#{bin}/gift-calc --help")
  end
end