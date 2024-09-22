{
  description = "sesh pin commit";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    {
      packages = {
        # one entry for each arch
        x86_64-linux = nixpkgs.lib.callPackage ./default.nix { };

        aarch64-linux = nixpkgs.lib.callPackage ./default.nix { };
      };

      # overlay
      overlays = {
        default = final: prev: { customSesh = final.callPackage ./default.nix { }; };
      };
    };
}
