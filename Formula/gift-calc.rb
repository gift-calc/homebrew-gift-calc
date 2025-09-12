class GiftCalc < Formula
  desc "CLI tool that calculates gift amounts with configurable randomness"
  homepage "https://github.com/gift-calc/gift-calc"
  url "https://registry.npmjs.org/gift-calc/-/gift-calc-2.6.0.tgz"
  version "2.6.0"
  sha256 "e08ae3a082793ddaf051664231123c957e4e03b1b10b011c2a5c2bf9c3b9a1af"
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