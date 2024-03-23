{
  description = "A flake with stylua and lua-language-server";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }: {
    packages.x86_64-linux = {
      stylua = nixpkgs.legacyPackages.x86_64-linux.stylua;
      lua-language-server = nixpkgs.legacyPackages.x86_64-linux.lua-language-server;
    };
    defaultPackage.x86_64-linux = self.packages.x86_64-linux.stylua;
  };
}
