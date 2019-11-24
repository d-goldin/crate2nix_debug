#! /usr/bin/env nix-shell
#! nix-shell -i bash

crate2nix  generate --cargo-toml Cargo.toml --crate-hashes crate-hashes.json
nix build -f Cargo.nix rootCrate.build
