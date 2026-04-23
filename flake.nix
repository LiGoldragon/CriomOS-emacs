{
  description = "CriomOS-emacs — Emacs distribution for the CriomOS home profile. Replaces legacy pkdjz/mkEmacs.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";

    blueprint.url = "github:numtide/blueprint";
    blueprint.inputs.nixpkgs.follows = "nixpkgs";

    emacs-overlay.url = "github:nix-community/emacs-overlay";
    emacs-overlay.inputs.nixpkgs.follows = "nixpkgs";

    # Source-only emacs-package inputs (previously threaded through pkdjz's `hob`).
    # Split out so CriomOS and CriomOS-home stay free of these.
    base16-theme   = { url = "github:league/base16-emacs"; flake = false; };
    gptel          = { url = "github:karthink/gptel"; flake = false; };
    jujutsu-el     = { url = "github:bennyandresen/jujutsu.el"; flake = false; };
    md-roam        = { url = "github:nobiot/md-roam"; flake = false; };
    superchat      = { url = "github:yibie/superchat"; flake = false; };
    tera-mode      = { url = "github:svavs/tera-mode"; flake = false; };
    ultra-scroll   = { url = "github:jdtsmith/ultra-scroll"; flake = false; };
    xah-fly-keys   = { url = "github:xahlee/xah-fly-keys"; flake = false; };

    # Tree-sitter grammars Emacs uses.
    tree-sitter-capnp = { url = "github:tree-sitter-grammars/tree-sitter-capnp"; flake = false; };
    tree-sitter-cozo  = { url = "github:Criome/tree-sitter-cozo"; inputs.nixpkgs.follows = "nixpkgs"; };

    # vscode-aski source (used for aski-mode elisp derivation).
    vscode-aski = { url = "github:LiGoldragon/vscode-aski"; flake = false; };
    aski        = { url = "github:Criome/aski"; inputs.nixpkgs.follows = "nixpkgs"; };
  };

  outputs = inputs: inputs.blueprint { inherit inputs; };
}
