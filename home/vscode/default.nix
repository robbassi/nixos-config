{ pkgs, ... }:

let
  nix-env-selector = pkgs.vscode-utils.extensionFromVscodeMarketplace { 
    publisher = "arrterian";
    name = "nix-env-selector";
    version = "1.0.7";
    sha256 = "0mralimyzhyp4x9q98x3ck64ifbjqdp8cxcami7clvdvkmf8hxhf";
  };
  vscode-haskell = pkgs.vscode-utils.extensionFromVscodeMarketplace { 
    publisher = "haskell";
    name = "haskell";
    version = "1.7.1";
    sha256 = "11myrk3hcc2hdw2n07w092s78aa6igpm7rgvn7ac9rbkkvc66rsi";
  };
in
  {
    home-manager.users.rob.programs.vscode = {
      enable = true;

      userSettings = {
        "nixEnvSelector.nixFile" = "\${workspaceRoot}/shell.nix";
        "haskell.logFile" = "/tmp/hls-log.txt";
        "haskell.trace.server" = "messages";
      };

      extensions = with pkgs.vscode-extensions; [
        vscodevim.vim
        eamodio.gitlens
        justusadam.language-haskell
        vscode-haskell
        nix-env-selector
      ];
    };
  }
