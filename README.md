# CriomOS-emacs

Emacs distribution for the CriomOS home profile. Replaces the legacy
`nix/pkdjz/mkEmacs/` tree in `criomos-archive`.

Split out so that:

1. CriomOS and CriomOS-home stay free of ~20 single-use source-only flake
   inputs (gptel, md-roam, jujutsu-el, xah-fly-keys, tree-sitter-\*, …).
2. The Emacs stack can be versioned and tested on its own cadence.
3. It can be consumed standalone (`home-manager switch --flake github:LiGoldragon/CriomOS-emacs#…`).

**Status:** scaffold. `packages/mkEmacs/` holds a verbatim copy of the legacy
`mkEmacs` function. Phase 1 converts it into a proper blueprint `packages/emacs.nix`
and wires up `homeModules.default`.

## Layout

- `packages/mkEmacs/` — verbatim legacy source. To be converted.
- `modules/home/default.nix` → `homeModules.default`
- `flake.nix` — blueprint + all emacs-source inputs.
- `devshell.nix`, `formatter.nix`.

## Consumption (future)

```nix
inputs.criomos-emacs.url = "github:LiGoldragon/CriomOS-emacs";
# In home module:
imports = [ inputs.criomos-emacs.homeModules.default ];
```

## Conventions

- Jujutsu only. Never `git` CLI.
- Mentci three-tuple commit format.
