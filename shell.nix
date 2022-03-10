{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
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
      ];
    in with pkgs; [
      (python39.withPackages env)
    ];
}

