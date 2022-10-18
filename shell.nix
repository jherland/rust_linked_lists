let
  # Taken from tip of nixos-22.05 branch
  nixpkgs_commit = "e06bd4b64bbfda91d74f13cb5eca89485d47528f";
in
{
  pkgs ? import (fetchTarball
    "https://github.com/NixOS/nixpkgs/archive/${nixpkgs_commit}.tar.gz") {}
}:

pkgs.mkShell {
  name = "rust-linked-lists-env";
  buildInputs = with pkgs; [
    cargo
  ];
}
