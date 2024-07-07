{ inputs, ... }:
{
  imports = [ inputs.treefmt-nix.flakeModule ];

  perSystem =
    { ... }:
    {
      treefmt = {
        # Used to find the project root
        projectRootFile = "flake.lock";

        programs.deno.enable = true;
        programs.mypy.enable = true;

        programs.yamlfmt.enable = true;

        programs.nixfmt.enable = true;
        programs.deadnix.enable = true;
        programs.ruff.format = true;
        programs.ruff.check = true;

        programs.shellcheck.enable = true;
        programs.shfmt.enable = true;
      };
    };
}
