# CriomOS-emacs — Roadmap

Active work is tracked in beads — `bd list --status open`. The list
below points at the bead for each phase.

## Phase 0 — scaffold (done)

- [x] `flake.nix` — blueprint + all emacs-source inputs.
- [x] `devshell.nix`, `formatter.nix`.
- [x] `modules/home/default.nix` — empty aggregate.
- [x] `packages/mkEmacs/` — verbatim legacy source from `criomos-archive`.
- [x] `README.md`, `docs/ROADMAP.md`.

## Phase 1 — convert mkEmacs to a blueprint package

- [ ] `emacs-plb` — rewrite the legacy `mkEmacs` function (custom
      `hob` arg-bag, pkdjz-style) as a proper blueprint
      `packages/emacs.nix` reading flake inputs directly. Wire
      `modules/home/default.nix` to set `programs.emacs.package` and
      materialize the `.el` files.

## Phase 2 — standalone consumption

- [ ] `emacs-y55` — verify
      `home-manager switch --flake github:LiGoldragon/CriomOS-emacs#<user>@<host>`
      works end-to-end on a non-CriomOS host.
- [ ] CriomOS-home consumes `inputs.criomos-emacs.homeModules.default`
      from its `modules/home/emacs.nix` (tracked in CriomOS-home as
      `home-tl6`).

## Open questions

- **Elisp config materialization:** keep `.el` files under
  `packages/mkEmacs/` and symlink, or generate `init.el` from a
  nix-side DSL? Default: keep the former, revisit if config churn warrants.
