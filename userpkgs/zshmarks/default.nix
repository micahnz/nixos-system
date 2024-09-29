{ lib, stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "zshmarks";
  version = "a766c6b";

  src = fetchFromGitHub {
    owner = "jocelynmallon";
    repo = pname;
    rev = "a766c6bc81f0412152499e83c818244b2eed1a77";
    sha256 = "sha256-tNKFBW+DsP83Stjhk+0B6BPguYVNEthTBNzN4aOU6Zs=";
  };

  strictDeps = true;
  dontBuild = true;

  installPhase = ''
    mkdir -p $out/share/${pname}
    cp *.zsh $out/share/${pname}/
  '';

  meta = with lib; {
    homepage = "https://github.com/jocelynmallon/zshmarks";
    description = "A port of Bashmarks (by Todd Werth), a simple command line bookmarking plugin, for oh-my-zsh";
    platforms = platforms.all;
  };
}
