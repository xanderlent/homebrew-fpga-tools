class ArachnePnr < Formula
  desc "Place and route tool for FPGAs"
  homepage "https://github.com/cseed/arachne-pnr"
  head "https://github.com/cseed/arachne-pnr.git"
  # TODO: What are the deps? Which are build-time?
  depends_on "xanderlent/fpga-tools/icestorm"
  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # TODO: Since this compiles things from icestorm, how to gaurantee that updated first?
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
