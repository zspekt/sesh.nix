{ buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "sesh";
  version = "1";

  src = fetchFromGitHub {
    owner = "zspekt";
    repo = pname;
    rev = "23112682c82122e0fe0de0a38c7bd9a42e1c1444";
    hash = "sha256-vIHImJ9f//itNIG9TQY0c4l3DBAJ9heYV+EUy2KjmAw=";
  };

  vendorHash = "sha256-a45P6yt93l0CnL5mrOotQmE/1r0unjoToXqSJ+spimg=";
}
