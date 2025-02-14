{ pkgs
, nix
, system
}:
pkgs.llvmPackages.stdenv.mkDerivation {
  name = "noogle-plugin";
  src = ./.;
  buildInputs = [
    nix
    pkgs.boost
  ];
  # For "safe" usage people should use this exact nix version
  passthru = {
    inherit nix;
  };
  nativeBuildInputs = with pkgs; [
    cmake
    pkg-config
  ];
  CXXFLAGS = [
    "-I${nix.dev}/include/nix"
    "-DHAVE_BOEHMGC"
    "-DSYSTEM='\"${system}\"'"
  ];
  installPhase = ''
    mkdir -p $out/lib
    cp libnoogle-plugin.so $out/lib
  '';
}
