{ pkgs, lib, config, inputs, ... }:

{
  packages = [ 
    pkgs.git
    pkgs.R
    pkgs.rPackages.here
    pkgs.rPackages.MASS
    pkgs.rPackages.tidyverse
  ];

  dotenv.enable = false;

  languages.python.enable = true;
  languages.python.poetry = {
    enable = true;
    activate.enable = true;
    install.enable = true;
  };
}
