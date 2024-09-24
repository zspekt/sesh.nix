{ buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "sesh";
  version = "1";

  src = fetchFromGitHub {
    owner = "zspekt";
    repo = pname;
    rev = "23112682c82122e0fe0de0a38c7bd9a42e1c1444";
    hash = "sha256-pd+BRgkbnCHLPeQDCxA3IlQl+rDbaQyPXJ+JiOAPt9U=";
  };

  vendorHash = "sha256-a45P6yt93l0CnL5mrOotQmE/1r0unjoToXqSJ+spimg=";
}
