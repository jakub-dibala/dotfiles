{
  lib,
  nixpkgs,
  inputs,
  system,
  home-manager,
  user,
  ...
}: {
  clevo-laptop = lib.nixosSystem {
    inherit system;
    specialArgs = {inherit user inputs;};
    modules = [
      ./clevo-laptop/hardware-configuration.nix
      ./clevo-laptop/configuration.nix

      home-manager.nixosModules.home-manager
      {
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
          extraSpecialArgs = {inherit user inputs system;};
          users.${user} = {
            imports = [(import ./clevo-laptop/home.nix)];
          };
        };
      }
    ];
  };
}
