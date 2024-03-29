# ------------------------------------------------------------------------------
# Codely theme config
# ------------------------------------------------------------------------------
export CODELY_THEME_MINIMAL=false
export CODELY_THEME_MODE="dark"
export CODELY_THEME_PROMPT_IN_NEW_LINE=false
export CODELY_THEME_PWD_MODE="short" # full, short, home_relative

# ------------------------------------------------------------------------------
# Languages
# ------------------------------------------------------------------------------
export JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64'
export GEM_HOME="$HOME/.gem"
export GOPATH="$HOME/.go"

# ------------------------------------------------------------------------------
# Apps
# ------------------------------------------------------------------------------
if [ "$CODELY_THEME_MODE" = "dark" ]; then
	fzf_colors="pointer:#ebdbb2,bg+:#3c3836,fg:#ebdbb2,fg+:#fbf1c7,hl:#8ec07c,info:#928374,header:#fb4934"
else
	fzf_colors="pointer:#db0f35,bg+:#d6d6d6,fg:#808080,fg+:#363636,hl:#8ec07c,info:#928374,header:#fffee3"
fi

export FZF_DEFAULT_OPTS="--color=$fzf_colors --reverse"


# ------------------------------------------------------------------------------
# Default Apps
# ------------------------------------------------------------------------------
# export SUDO_ASKPASS=~/.config/i3/dmenupass

# ------------------------------------------------------------------------------
# Machine data
# ------------------------------------------------------------------------------
export ATHOME_IP=192.168.1.212
export APPS_DIR="$HOME/Applications"

# ------------------------------------------------------------------------------
# EsPublico Tech Utils
# ------------------------------------------------------------------------------

export TECH_DIARY="$HOME/developers-diary"
export TECH_WORKSPACE="$HOME/workspaces"
export TECH_PROJECTS="$TECH_WORKSPACE/.tech-projects"
export TECH_PROJECTS_CODE="$TECH_WORKSPACE/Proyectos"

export TECH_REDMINE=https://redmine.g3stiona.com/redmine
export TECH_GIT_WEB=http://git-central.g3stiona.com/gitweb
export TECH_HG_WEB=http://hg-central.g3stiona.com/hg



# ------------------------------------------------------------------------------
# Path - The higher it is, the more priority it has
# ------------------------------------------------------------------------------
path+=(
	"$HOME/bin"
	"$DOTLY_PATH/bin"
	"$DOTFILES_PATH/bin"
	"$JAVA_HOME/bin"
	"$GEM_HOME/bin"
	"$GOPATH/bin"
	"$HOME/.cargo/bin"
	"/usr/local/opt/ruby/bin"
	"/usr/local/opt/python/libexec/bin"
	"/opt/homebrew/bin"
	"/usr/local/bin"
	"/usr/local/sbin"
	"/bin"
	"/usr/bin"
	"/usr/sbin"
	"/sbin"
	"$HOME/Applications/node/current/bin"
	"$HOME/Applications/p4v/current/bin"
)

export path
