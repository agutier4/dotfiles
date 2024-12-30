{
  description = "NixOS/Home Manager config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";
    
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixgl = {
      url = "github:nix-community/nixGL";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, nixgl, ...}:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system; 
        overlays = [ nixgl.overlay ];
      };
    in {
      nixosConfigurations = {
        jupiter-nixos = lib.nixosSystem {
          inherit system;
          modules = [ ./configuration.nix ]; 
        };
      }; 

      homeConfigurations = {
        andrew = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ];
          extraSpecialArgs = { nixgl = nixgl; };
        };
      };
    };
}
