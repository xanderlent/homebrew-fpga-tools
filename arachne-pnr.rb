class ArachnePnr < Formula
  desc "Place and route tool for FPGAs (Deprecated, use nextpnr instead!)"
  homepage "https://github.com/YosysHQ/arachne-pnr"
  head "https://github.com/YosysHQ/arachne-pnr.git"
  # N.B. As of late July 2019, arachne-pnr is no longer maintained. Replaced by nextpnr!

  # TODO: What are the deps? Which are build-time?
  # See info here: http://www.clifford.at/icestorm/#install
  # NOTE: That page says the following which may be hard to enforce w/ homebrew?
  # "Always rebuild the PNR tools after updating your IceStorm installation."
  depends_on "xanderlent/fpga-tools/icestorm"

  def install
    # If I understand http://www.clifford.at/icestorm/#install correctly, the
    # PREFIX and ICEBOX are assumed to be based on /usr/local, but we want to
    # be more flexible than that. :) (Though it should be noted that the code
    # assumes ICEBOX=$(PREFIX)/share/icebox so, shrugs.)
    system "make", "PREFIX=#{prefix}", "ICEBOX=#{HOMEBREW_PREFIX}/share/icebox", "install"
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
