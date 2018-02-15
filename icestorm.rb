class Icestorm < Formula
  desc "Project IceStorm - Lattice iCE40 FPGA tools"
  homepage "http://www.clifford.at/icestorm/"
  head "https://github.com/cliffordwolf/icestorm.git"
  # TODO: What are the deps? Which are build-time?
  depends_on "python3" => :run # Most programs are py3 scripts?
  depends_on "libftdi0" => :run # Used in iceprog?
  depends_on "pkg-config" => :build # Speculative! TODO: Check if case!
  def install
    # TODO: How to change prefix
    system "make", "PREFIX=#{prefix}", "install"
    # TODO: Yeah yeah bad style low effort
    # Don't understand why I need these, make install should do it but brew hates that...
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
