class NextpnrEcp5 < Formula
  desc "nextpnr portable FPGA place and route tool (Lattice ECP5)"
  homepage "https://github.com/YosysHQ/nextpnr"
  head "https://github.com/YosysHQ/nextpnr.git"

  depends_on "cmake" => :build
  depends_on "eigen" => :build # TODO: is this really build-time-only?
  # modern C++11 compiler, clang-format used for devel
  depends_on "boost"
  depends_on "boost-python3"
  depends_on "python"
  depends_on "qt"
  depends_on "xanderlent/fpga-tools/libtrellis"
  # You'll also need yosys for a full flow, but it's not a dependency.

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    # Note that -DCMAKE_INSTALL_PREFIX is part of the brew standard cmake args
    system "cmake", "-DARCH=ecp5", "-DTRELLIS_ROOT=#{HOMEBREW_PREFIX}/share/trellis", ".", *std_cmake_args
    system "make"
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test nextpnr-ecp5`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
