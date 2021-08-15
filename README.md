# nix-science

A repository skeleton for reproducible scientific projects.

1. Install [nix](https://nixos.org/).
2. Run `nix-shell`.

Your shell is now in an environment with all necessary software installed, and
where all versions and dependencies of software are precisely those intended.

## Development

To automatically rebuild nix files from language-specific sources before git
commits, run `.git_hooks/setup` to enable a pre-commit hook.

