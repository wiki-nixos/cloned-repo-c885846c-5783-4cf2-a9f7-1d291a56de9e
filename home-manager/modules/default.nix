{pkgs, lib, config, ...}:
let
	cfg = config.ltp;
in {

	imports = [
		./mpv.nix
		./alacritty.nix
		./git.nix
		./gpg.nix
		./xdg.nix
		./ranger.nix
		./bat.nix
	];

	options = {
		ltp.enable = lib.mkEnableOption "enable ltp modules";
	};

	config = lib.mkIf cfg.enable {
		ltp.mpv.enable = true;
		ltp.alacritty.enable = true;
		ltp.git.enable = true;
		ltp.gpg.enable = true;
		ltp.xdg.enable = true;
		ltp.ranger.enable = false;
		ltp.bat.enable = true;
	};

}
