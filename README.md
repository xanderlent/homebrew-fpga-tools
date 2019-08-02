# FPGA tools for Homebrew (supplemental)

Formuale for installing FOSS FPGA tools with the Homebrew package manager.

Currently, these are only the formulae not included by Homebrew (& Cask) upstream,
likely because they are head-only.

Poorly tested, likely somewhat outdated, these were made public so that I could download them without logging in. Generally the only tests I've done are that the programs compile. Occasionally I also test that the full flows can be completed, though almost always without flashing onto an FPGA.

That said, please feel free to use/improve/find bugs in this code as you see fit.
I'm happy to help and fix bugs on a best-effort basis, and if you find this useful, I'd appreciate it if you let me know.

## Formulae

- arachne-pnr
- icestorm
- nextpnr-ice40
- libtrellis
- nextpnr-ecp5

There might be better names for the icestorm and libtrellis formulae than those I have chosen. Yet another TODO, I suppose.

Formulae TODO:
- nextpnr-generic
- Additionally, nextpnr seems to be built based on your chosen FPGA architecture. It might be interesting to try and build a meta-formula for it, or simply try and compile all the binaries together?
- Programs for people *developing* the reverse-engineered bitstream formats? This repo is currently only focused on end-users, though, simply because I am an end-user.

TODO: More thorough testing that programs not merely compile but run, and maybe even test that they do their function correctly. Integration tests probably go outside of `brew test` though?

TODO: Do these work in Linuxbrew?
