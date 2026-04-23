# CriomOS-emacs — Roadmap

## Phase 0 — scaffold

- [x] `flake.nix` — blueprint + all emacs-source inputs (formerly threaded via pkdjz's `hob`).
- [x] `devshell.nix`, `formatter.nix`.
- [x] `modules/home/default.nix` — empty aggregate.
- [x] `packages/mkEmacs/` — verbatim legacy source.
- [x] `README.md`, `docs/ROADMAP.md`.

## Phase 1 — convert mkEmacs to a blueprint package

Legacy `packages/mkEmacs/default.nix` is a function taking a custom arg bag
(`hob`, `tree-sitter-*`, `aski-*`). Blueprint expects `{ pkgs, inputs, flake, ... }:
pkg`.

- [ ] Rewrite as `packages/emacs.nix` taking blueprint's per-system args.
- [ ] Pull sources from `inputs.{base16-theme, gptel, jujutsu-el, md-roam, …}`
      instead of `hob.*`.
- [ ] Pull tree-sitter grammars from `inputs.{tree-sitter-capnp, tree-sitter-cozo}`.
- [ ] Replace `aski-mode`/`aski-ts-mode`/`tree-sitter-aski` derivations with
      source pulls from `inputs.{vscode-aski, aski}`.
- [ ] Verify: `nix build .#emacs` produces a runnable wrapped emacs-pgtk with
      all packages loaded.

## Phase 2 — home module wiring

- [ ] `modules/home/default.nix`: set `programs.emacs.package = flake.packages.${pkgs.system}.emacs;`
- [ ] `modules/home/default.nix`: materialize `packages/mkEmacs/*.el` into
      `xdg.configFile."emacs"` (or `programs.emacs.extraConfig`).
- [ ] `services.emacs.enable` gated by an option (some users don't want the daemon).

## Phase 3 — standalone consumption

- [ ] Verify `home-manager switch --flake github:LiGoldragon/CriomOS-emacs#<user>@<host>`.
- [ ] CriomOS-home consumes `inputs.criomos-emacs.homeModules.default` from
      its `modules/home/emacs.nix`.

## Open questions

- **Elisp config materialization:** keep in `.el` files under `packages/mkEmacs/`
  and symlink, or migrate to a generated init.el via a nix-side DSL? Legacy
  uses the former. Default: keep the former, revisit if config churn warrants.
