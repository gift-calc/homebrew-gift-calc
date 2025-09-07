class GiftCalc < Formula
  desc "CLI tool that calculates gift amounts with configurable randomness"
  homepage "https://github.com/gift-calc/gift-calc"
  url "https://registry.npmjs.org/gift-calc/-/gift-calc-2.2.0.tgz"
  version "2.2.0"
  sha256 "db2b069fe6cbfbb5a90b9a9c8c70d3055c907c59b4e38a318cc5de2db0146f63"
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