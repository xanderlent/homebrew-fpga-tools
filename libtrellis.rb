# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Libtrellis < Formula
  desc "Library for working with the Lattice ECP5 bit-stream format."
  homepage "https://symbiflow.github.io/#trellis"
  head "https://github.com/SymbiFlow/prjtrellis"
  depends_on "cmake" => :build
  # modern C++14 compiler & git for devel
  depends_on "boost"
  depends_on "python" # possibly only for devel TODO: check
  depends_on "boost-python"
  depends_on "openocd" # Technically optional

  def install
    cd "libtrellis"
    # -DCMAKE_INSTALL_PREFIX is IIRC part of the standard cmake args? yep
    system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test prjtrellis`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
