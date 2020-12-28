with (import <nixpkgs> {});

rustPlatform.buildRustPackage rec {
  pname = "getwms";
  version = "0.1.0";

  src = ./.;

  cargoSha256 = "0ri8cpyc2qrpdh9wrn50czjhgpqvq0sfz88xpd03928pfw8d3665";

  buildInputs = [ pkgconfig openssl ];

  meta = with lib; {
    description = "A CLI to collect webmensions from common public webmentions backends";
    homepage = "https://github.com/deluvi/getwms";
    maintainers = with maintainers; [deluvi];
    platforms = platforms.all;
  };
}
