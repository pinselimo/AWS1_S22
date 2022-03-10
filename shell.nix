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
      ];
    in with pkgs; [
      (python310.withPackages env)
    ];
}

