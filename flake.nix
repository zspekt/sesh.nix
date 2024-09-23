{
  description = "sesh pinned commit flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    {
      defaultPackage.x86_64-linux =
        (import nixpkgs { system = "x86_64-linux"; }).callPackage ./default.nix
          { };
      defaultPackage.aarch64-linux =
        (import nixpkgs { system = "aarch64-linux"; }).callPackage ./default.nix
          { };
    };
}
