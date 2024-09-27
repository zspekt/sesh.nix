{ buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "sesh";
  version = "1";

  src = fetchFromGitHub {
    owner = "zspekt";
    repo = pname;
    rev = "ea5dc7da96dab8be726370c08a4252e7595b318d";
    hash = "sha256-vIHImJ9f//itNIG9TQY0c4l3DBAJ9heYV+EUy2KjmAw=";
  };

  vendorHash = "sha256-a45P6yt93l0CnL5mrOotQmE/1r0unjoToXqSJ+spimg=";
}
