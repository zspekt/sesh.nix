{
  description = "sesh flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      # Import nixpkgs for different architectures
      pkgs_x86_64 = import nixpkgs { system = "x86_64-linux"; };
      pkgs_aarch64 = import nixpkgs { system = "aarch64-linux"; };
    in
    {
      packages = {
        # Define packages for each architecture
        # x86_64-linux = pkgs_x86_64.lib.callPackage ./default.nix { };
        aarch64-linux = pkgs_aarch64.lib.callPackage ./default.nix { };
      };

      # Define overlay for use in system configuration
      overlays = {
        default = final: prev: { customSesh = final.callPackage ./default.nix { }; };
      };
    };
}
