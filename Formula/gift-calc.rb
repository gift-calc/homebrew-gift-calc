class GiftCalc < Formula
  desc "CLI tool that calculates gift amounts with configurable randomness"
  homepage "https://github.com/gift-calc/gift-calc"
  url "https://registry.npmjs.org/gift-calc/-/gift-calc-2.4.1.tgz"
  version "2.4.1"
  sha256 "dcce79225f5ef0f241b465c4b484933164090fd4b96b6925fc98f6c7df76b5e4"
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