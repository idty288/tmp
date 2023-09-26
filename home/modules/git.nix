{ userFullName, userEmail, ... }:

{
  programs.git = {
    enable = true;
    userName = userFullName;
    userEmail = userEmail;
  };
}
