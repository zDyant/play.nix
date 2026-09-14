{ flake }:
{ ... }:
{
  imports = [
    flake.inputs.mix-nix.homeManagerModules.monitors
    ./gamescoperun.nix
    ./wrappers.nix
  ];

  config = {
    # Pass play.nix's inputs to all modules via _module.args
    _module.args = {
      inputs = flake.inputs;
      playLib = flake.lib;
    };
  };
}
