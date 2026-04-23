{ flake, inputs, ... }:

# homeModules.default — CriomOS-emacs home profile.
#
# Consumed by CriomOS-home's emacs.nix as:
#   imports = [ inputs.criomos-emacs.homeModules.default ];
#
# Phase 0: empty. Phase 1 will land:
#   - programs.emacs.package = flake.packages.${pkgs.system}.emacs;
#   - xdg.configFile."emacs" = { source = …init.el tree…; };
#   - services.emacs.enable if daemon is wanted.

{ config, lib, pkgs, ... }:
{
  imports = [ ];
  config = { };
}
