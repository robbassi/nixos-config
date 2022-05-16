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
  language-yesod = pkgs.vscode-utils.extensionFromVscodeMarketplace { 
    publisher = "BIGMOON";
    name = "language-yesod";
    version = "0.9.0";
    sha256 = "1vp3cw29m5k661i1b213m7n1gja531r901h4iwnvpykd9i66rfzg";
  };
  hackage-theme = pkgs.vscode-utils.extensionFromVscodeMarketplace { 
    publisher = "dmarticus";
    name = "hackage-theme";
    version = "0.0.3";
    sha256 = "1xsz86g8yw5ym3msql05qlcvbjqxy5dyy4fzw9y3kidhck7mh2mg";
  };

in
  {
    home-manager.users.rob.programs.vscode = {
      enable = true;

      userSettings = {
        "editor.tabSize" = 2;
        "editor.rulers" = [80];
        "workbench.colorTheme" = "GitHub Dark High Contrast";
        "nixEnvSelector.nixFile" = "\${workspaceRoot}/shell.nix";
        "haskell.plugin.ghcide-type-lenses.globalOn" = false;
        "haskell.logFile" = "/tmp/hls-log.txt";
        "haskell.trace.server" = "messages";
      };

      extensions = with pkgs.vscode-extensions; [
        vscodevim.vim
        eamodio.gitlens
        justusadam.language-haskell
        github.github-vscode-theme
        hackage-theme
        bbenoist.nix
        language-yesod
        vscode-haskell
        nix-env-selector
      ];
    };
  }
