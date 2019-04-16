# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class NextpnrIce40 < Formula
  desc "nextpnr portable FPGA place and route tool"
  homepage "https://github.com/YosysHQ/nextpnr"
  head "https://github.com/YosysHQ/nextpnr.git"
  # TODO: Which are build and which are runtime?
  # See mac info in the Readme!
  depends_on "cmake" => :build
  depends_on "eigen" => :build
  depends_on "boost"
  depends_on "boost-python3"
  depends_on "python"
  depends_on "qt"
  # "Latest git Yosys is required to synthesise the demo design"
  depends_on "xanderlent/fpga-tools/icestorm"

  def install
    # TODO: HOMEBREW_PREFIX or the Cellar location of icebox? Since you should
    # "Always rebuild the PNR tools after updating your IceStorm installation."
    system "cmake", "-DARCH=ice40", "-DICEBOX_ROOT=#{HOMEBREW_PREFIX}/share/icebox", ".", *std_cmake_args
    # Interesting! Homebrew automatically sets the PREFIX for install!
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test nextpnr-ice40`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
