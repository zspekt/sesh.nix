{ buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "sesh";
  version = "1";

  src = fetchFromGitHub {
    owner = "zspekt";
    repo = pname;
    rev = "81c538e2fe131b365ec8265fdd8c8522337352d2";
    hash = "sha256-pd+BRgkbnCHLPeQDCxA3IlQl+rDbaQyPXJ+JiOAPt9U=";
  };

  vendorHash = "sha256-a45P6yt93l0CnL5mrOotQmE/1r0unjoToXqSJ+spimg=";
}
