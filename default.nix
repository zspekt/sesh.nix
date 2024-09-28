{ buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "sesh";
  version = "1";

  src = fetchFromGitHub {
    owner = "zspekt";
    repo = pname;
    rev = "f6a5de5d51d92db439425966539bf61af5c23e58";
    hash = "sha256-xUBiByPZ8msaSXnynMrk4F8qn5ekUxuco6h9a1Q1OfE=";
  };

  vendorHash = "sha256-a45P6yt93l0CnL5mrOotQmE/1r0unjoToXqSJ+spimg=";
}
