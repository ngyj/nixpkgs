{ lib, fetchzip }:

let
  version = "2.0";
in fetchzip {
  name = "anime-ace-${version}";

  postFetch = ''
    mkdir -p $out/share/fonts
    unzip -j $downloadedFile \*.ttf -d $out/share/fonts/truetype
  '';

  url = "https://dl.dafont.com/dl/?f=anime_ace_bb";

  sha256 = "15a5kbdm1xr1dl365hj9kildwjl9aqssph2q3kq222qdcl9izgia";

  meta = {
    description = "AnimeAce font ©Nate Piekos: the perfect font for editing and translation of comics and manga scans.";
    homepage = "https://blambot.com/font_animeace2.shtml";
    platforms = with lib.platforms; all;
    maintainers  = with lib.maintainers; all;
    license = lib.licenses.mit;
  };
}
