{ buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "sesh";
  version = "1";

  src = fetchFromGitHub {
    owner = "zspekt";
    repo = pname;
    rev = "f6a5de5d51d92db439425966539bf61af5c23e59";
    hash = "sha256-kKKJiCGfbj1ILdweoN/0yok8M8DfJwOeAGCf4TvSYfc=";
  };

  vendorHash = "sha256-a45P6yt93l0CnL5mrOotQmE/1r0unjoToXqSJ+spimg=";
}
