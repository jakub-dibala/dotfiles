{pkgs, ...}: {
	programs.vscode = {
		enable = true;
		extensions = [
			pkgs.vscode-extensions.vscodevim.vim
			pkgs.vscode-extensions.bbenoist.nix
			pkgs.vscode-extensions.github.github-vscode-theme
			pkgs.vscode-extensions.bmewburn.vscode-intelephense-client
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
			{
				key = "alt+shift+g";
				command = "editor.action.revealDefinition";
			}
			{
				key = "alt+z";
				command = "undo";
			}
			{
				key = "alt+shift+z";
				command = "redo";
			}
			{
				key = "alt+c";
				command = "editor.action.clipboardCopyAction";
			}
			{
				key = "alt+v";
				command = "editor.action.clipboardPasteAction";
			}
			{
				key = "alt+a";
				command = "editor.action.selectAll";
			}
			{
				key = "alt+shift+b";
				command = "git.checkout";
			}
			{
				key = "alt+shift+k";
				command = "git.pushTo";
			}
			{
				key = "alt+1";
				command = "workbench.view.explorer";
			}
			{
				key = "alt+2";
				command = "workbench.view.scm";
			}
			{
				key = "shift+alt+[BracketLeft]";
    			command = "editor.action.commentLine";
  			}
		];
	};
}
