class GiftCalc < Formula
  desc "CLI tool that calculates gift amounts with configurable randomness"
  homepage "https://github.com/gift-calc/gift-calc"
  url "https://registry.npmjs.org/gift-calc/-/gift-calc-2.1.0.tgz"
  version "2.1.0"
  sha256 "ba9d9fec6533c9a4b3e51a4fe6c89a4faa0b20192e3b344d3a0e9dcab468d992"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{libexec}"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Gift Calculator", shell_output("#{bin}/gift-calc --help")
  end
end