# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
 class Icestorm < Formula
  desc "Project IceStorm - Lattice iCE40 FPGAs Bitstream Documentaion (Reverse Engineered)"
  homepage "http://www.clifford.at/icestorm/"
  url "https://github.com/cliffordwolf/icestorm.git"
  version "HEAD"
  sha256 ""
  # TODO: What are the deps? Which are build-time?
  depends_on "python3"# => :build
  depends_on "libftdi0"
  depends_on "pkg-config"
   def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # TODO: How to change prefix
    system "make", "PREFIX=#{prefix}", "install" # if this fails, try separate make/make install steps
  end
   test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test icestorm`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
