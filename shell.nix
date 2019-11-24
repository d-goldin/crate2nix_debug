with import <nixpkgs> { };
let
  crate2nix = import (fetchTarball {
    url = "https://github.com/kolloch/crate2nix/tarball/0.6.0";
    sha256 = "146jqjpgwgrh61j71qpvaqhhhnd8dkks2z7rr397v881v7qw7yn2";
  }) { };
in with pkgs;
stdenv.mkDerivation {
  name = "crate2nix_debug";

  buildInputs = [ rustPlatform.rust.rustc rustPlatform.rust.cargo crate2nix ];

}
