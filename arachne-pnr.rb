# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
 class ArachnePnr < Formula
  desc ""
  homepage ""
  url "https://github.com/cseed/arachne-pnr"
  sha256 "2a808186dfb920d6feae99b79a17dcfc53e26e912d610f2dfc85a1e98eabafac"
  # TODO: What are the deps? Which are build-time?
  depends_on "xanderlent/brew-fpga-tools/icestorm"
   def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "make", "install" # if this fails, try separate make/make install steps
  end
   test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test arachne-pnr`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
