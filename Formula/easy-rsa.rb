# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class EasyRsa < Formula
  desc "easy-rsa - Simple shell based CA utility"
  homepage "https://openvpn.net/index.php/open-source/documentation/miscellaneous/77-rsa-key-management.html"
  url "https://github.com/OpenVPN/easy-rsa/releases/download/v3.0.3/EasyRSA-3.0.3.tgz"
  sha256 "fb239d67f4bd09f817b0025450d422ed7ae3ee93af737c57d4acd8fdb646079e"

  def install
    bin.install "easyrsa3/easyrsa"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test easy-rsa`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/easyrsa"
  end
end
