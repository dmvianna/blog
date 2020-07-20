{
  imports = [ <nixpkgs/nixos/modules/virtualisation/amazon-image.nix> ];
  ec2.hvm = true;
  networking.hostName = "blog";

  security.sudo.wheelNeedsPassword = false;
  services.openssh.passwordAuthentication = false;
  nix.trustedUsers = ["@wheel"];
  
  users.users.dmvianna = {
    isNormalUser = true;
    extraGroups = ["wheel"];
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDZhPVGlqufUlsSHykL1yh9B1of/330sQo7dMdSGgd/iW7t58l9FAh8tfdaIPqO4woXkX868IK4RuVc2Cmsp7U8cPH4R2JrUdHEn78vM1GAPFo28j884y7tigzCpiYRGvOldEvDMjWb/oNUmfeNVX+L1uCfi8Om+vKeLD3eO1LOqcjoO2QGO298LaOt+iI5E7YcxG5//p6WPnO6yltFhh8iSsh52+E1X1aoJ9Lkc2zelswp/qD6ChporSJnPzFKDDLzJkTZClfGVBkilgzWU7E80ysAX/JTJeGMYA3+fmcacKKCSGr1g3xcES861Mw408ec+J+1xfpf17SkQ09cN0m8blFXZiLg309StoA8zx2GbXbjMx+KoqmCdqzOks4+udiab5rxSFN9kRe0vdj93QH6fbiYHNhnweuW8ChGyx6gx4k93QvLS+SowPVByAcXIJSxiglMAgRvbuiIuZwyk4XpDFBvaBeNk8EyU9PmoaILeDCpfVEf73FM1Q0ngRELvvDNLFkP4K8kxngsReXbxlCp8d9WF1DgEmLfsW4Nl8KYwmIZ7LKgmoz33gq0XXhAE1m11dwE8Rjv/KMX3bUgW+NF3nTeHNP5tiEOalvbuALbeSXwrmcFrk7ZylUvouP2h2MNnpBNY10NuhvYNDSAFpKX5uiU77Er2Nvbswcrll/qjQ== dmlvianna@gmail.com"
    ];
  };
}
