{
  description = "sesh pin commit";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {
      packages = {
        # one entry for each arch
        x86_64-linux = pkgs.callPackage ./default.nix { };
      };

      # # overlay
      # overlays = {
      #   default = final: prev: {
      #     customSesh = final.callPackage ./default.nix {};
      #   };
      # };
    };
}
