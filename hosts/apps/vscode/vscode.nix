{pkgs, ...}: {
	programs.vscode = {
		enable = true;
		extensions = [
			pkgs.vscode-extensions.vscodevim.vim
			pkgs.vscode-extensions.bbenoist.nix
			pkgs.vscode-extensions.github.github-vscode-theme
		];
		keybindings = [
			{
				key = "alt+s";
				command = "workbench.action.files.save";
			}
			{
				key = "alt+w";
				command = "workbench.action.closeActiveEditor";
			}
			{
				key = "alt+shift+p";
				command = "workbench.action.showCommands";
			}
			{
				key = "alt+p";
				command = "workbench.action.quickOpen";
			}
			{
				key = "alt+shift+h";
				command = "workbench.action.previousEditor";
			}
			{
				key = "alt+shift+l";
				command = "workbench.action.nextEditor";
			}
			{
				key = "alt+shift+ú";
				command = "editor.action.addCommentLine";
			}
		];
	};
}
