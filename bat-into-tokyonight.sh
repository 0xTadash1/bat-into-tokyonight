bat-into-tokyonight() (
	set -eu

	local REPO='https://github.com/folke/tokyonight.nvim.git'
	local REPO_NAME='tokyonight.nvim/'
	local THEME_DIR='extras/sublime/'

	type bat >& /dev/null
	local BAT_THEME_DIR="$(command bat --config-dir)/themes"
	local BAT_THEME_CACHE="$(command bat --cache-dir)/themes.bin"

	[[ ! -d "$BAT_THEME_DIR" ]] && mkdir -p "$BAT_THEME_DIR"
	cd "$BAT_THEME_DIR"
	if [[ ! -d "$REPO_NAME" ]]; then
		git clone --depth=1 --filter=blob:none --sparse "$REPO"
		cd "$REPO_NAME"
		git sparse-checkout set "$THEME_DIR"
	else
		cd "$REPO_NAME"
		git fetch
		local behind=$(git rev-list --count "HEAD..@{u}")
		if (( ${behind:?} > 0 )); then
			# Show changings
			git -c core.pager= log "HEAD..@{u}" --oneline
			git pull
		fi
	fi

	# Validate the cache
	if [[ -n "$(find "$BAT_THEME_DIR" -name '*.tmTheme' -mnewer "$BAT_THEME_CACHE")" ]]; then
		command bat cache --build
	fi

	return 0
)
