# Agent Bootstrap — CriomOS-emacs

## First thing

Run `bd list --status open` to see what's already on the table.

## Scope

Emacs distribution for the CriomOS home profile. Packages the mkEmacs
build + all elisp sources + tree-sitter grammars as a self-contained
blueprint flake. Consumed by `CriomOS-home` and (optionally) standalone
via `home-manager switch --flake github:LiGoldragon/CriomOS-emacs#…`.

## Rust style

N/A — this is a Nix + elisp repo.

## Hard process rules

- Jujutsu only. Never `git` CLI.
- Push immediately after every change.
- Mentci three-tuple commit format:
  `(("CommitType", "scope"), ("Action", "what"), ("Verdict", "why"))`.
