# Agent instructions — CriomOS-emacs

You **MUST** read AGENTS.md at `github:ligoldragon/lore` — the workspace contract.

You **MUST** read CriomOS's AGENTS.md (sibling repo) — CriomOS-cluster rules apply here.

## Repo role

Emacs distribution for the CriomOS home profile. Packages the mkEmacs build + elisp sources + tree-sitter grammars as a self-contained blueprint flake. Consumed by `CriomOS-home` and standalone via `home-manager switch --flake github:LiGoldragon/CriomOS-emacs#…`.

First thing: run `bd list --status open`.
