class GiftCalc < Formula
  desc "CLI tool that calculates gift amounts with configurable randomness"
  homepage "https://github.com/gift-calc/gift-calc"
  url "https://registry.npmjs.org/gift-calc/-/gift-calc-2.2.1.tgz"
  version "2.2.1"
  sha256 "15bcc02e8831ba31776e401c625c4149129cd2018def044127a65790213a75b3"
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