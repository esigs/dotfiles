{
  description = "A developer and keyboard focused workstation.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixvim, ... } @ inputs:
    let
      username = "erics";
      userModule = { ... }: { _module.args.username = username; };

      mkHost = name: path:
        nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            userModule
            ./modules/common-packages.nix
            path
            home-manager.nixosModules.home-manager
            {
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = {
                inherit inputs username;
              };
              home-manager.users.${username} = import ./home.nix;
            }
          ];
        };
    in {
      nixosConfigurations = {
        x1 = mkHost "x1" ./hosts/x1/configuration.nix;
        # desktop = mkHost "desktop" ./hosts/desktop/configuration.nix; << future example
      };
    };
}
