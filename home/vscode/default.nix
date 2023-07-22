{ pkgs, ... }:
{
  home-manager.users.rob.programs.vscode = {
    enable = true;

    userSettings = {
      "editor.tabSize" = 2;
      "editor.rulers" = [80];
      "workbench.colorTheme" = "Visual Studio Light";
      "nixEnvSelector.nixFile" = "\${workspaceRoot}/shell.nix";
      "haskell.plugin.ghcide-type-lenses.globalOn" = false;
    };

    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      eamodio.gitlens
      justusadam.language-haskell
      github.github-vscode-theme
      # hackage-theme
      bbenoist.nix
      # language-yesod
      # vscode-haskell
      # nix-env-selector
    ];

    mutableExtensionsDir = true;
  };
}
