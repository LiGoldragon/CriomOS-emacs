# ARCHITECTURE — CriomOS-emacs

Emacs configuration as a CriomOS module. nix-flake-shaped;
imported by [CriomOS](https://github.com/LiGoldragon/CriomOS) /
[CriomOS-home](https://github.com/LiGoldragon/CriomOS-home).

## Role

Editor environment for the operator who runs CriomOS. Provides
keybindings, packages, and modes specific to the sema ecosystem
(eventually: tree-sitter integration for nexus, structural
editing of records via signal client, etc.).

Detailed staging lives in [`docs/ROADMAP.md`](docs/ROADMAP.md).

## Boundaries

Owns:

- `modules/` — emacs nix modules (packages, init, configs).
- `lib/` — helpers used across modules.

Does not own:

- The OS modules around it — that's CriomOS.
- The home-manager profile — that's CriomOS-home.

## Status

CANON. Active.

## Cross-cutting context

- Project-wide architecture:
  [criome/ARCHITECTURE.md](https://github.com/LiGoldragon/criome/blob/main/ARCHITECTURE.md)
