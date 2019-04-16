class Icestorm < Formula
  desc "Project IceStorm - Lattice iCE40 FPGA tools"
  homepage "http://www.clifford.at/icestorm/"
  head "https://github.com/cliffordwolf/icestorm.git"

  # TODO: What are the deps? Which are build-time?
  # See some info here: http://www.clifford.at/icestorm/#install
  # See Mac info I recall using when creating these formulae here:
  # http://www.clifford.at/icestorm/notes_osx.html
  # On second thought that link doesn't seem to mention dependencies?
  # IIRC I figured these out through trial and error?
  depends_on "pkg-config" => :build # Speculative! TODO: Check if only needed on build!
  depends_on "libftdi0" # Used in iceprog?
  depends_on "python" # Most programs are py3 scripts?

  def install
    # TODO: Per the mac info page above, should probably set LDLIBS/CFLAGS
    # so that you can install dependencies outside of /usr/local
    system "make", "PREFIX=#{prefix}", "install"
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
