{ hostName, userName, userFullName, ... }:

{
  # users.mutableUsers = false;
  users.users.${userName} = {
    isNormalUser = true;
    description = userFullName;
    initialPassword = "password";
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };

  home-manager.users.${userName} = import ../../home/${hostName}.nix;
}
