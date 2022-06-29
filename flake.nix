{
  description = "A basic flake with a shell";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShell = pkgs.mkShell {
        nativeBuildInputs = let
          env = pyPkgs : with pyPkgs; [
            numpy
            matplotlib
            pandas
            xlrd
            seaborn
            ipython
            jupyter
            autopep8
            nbmerge
            hypothesis
            pytest
            (buildPythonPackage rec {
              pname = "rise";
              version = "5.7.1";
              src = fetchPypi {
                inherit pname version;
                sha256 = "641db777cb907bf5e6dc053098d7fd213813fa9a946542e52b900eb7095289a6";
                };
              propagatedBuildInputs = [ notebook ];})

            # Group 10
            tqdm

            # Group 7
            geopandas


            #(buildPythonPackage rec {
              #pname = "wonderland";
              #version = "1.0";
              #src = /home/pinselimo/Python/Wonderland/wonderland;
              #propagatedBuildInputs = [ matplotlib hypothesis pytest ];})
          ];
        in with pkgs; [
          (python39.withPackages env)
        ];
      };
    });
}
