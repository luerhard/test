{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  packages = [
    pkgs.git
    pkgs.R
    pkgs.cudatoolkit
    pkgs.pkgs.rPackages.here
    pkgs.rPackages.MASS
    pkgs.rPackages.tidyverse
    pkgs.python312Packages.pandas
    pkgs.python312Packages.torch
  ];

  dotenv.enable = false;

  languages.python.enable = true;
  languages.python.poetry = {
    enable = true;
    activate.enable = true;
    install.enable = true;
  };
}
