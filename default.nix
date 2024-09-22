{ buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "sesh";
  version = "1";

  src = fetchFromGitHub {
    owner = "joshmedeski";
    repo = pname;
    rev = "555884f9f4dd2518d53a4e59c0df18ea444a5bfc";
    hash = "sha256-pd+BRgkbnCHLPeQDCxA3IlQl+rDbaQyPXJ+JiOAPt9U=";
  };

  vendorHash = "sha256-a45P6yt93l0CnL5mrOotQmE/1r0unjoToXqSJ+spimg=";
}
