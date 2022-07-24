set fish_greeting # disable fish greeting

eval (/usr/local/bin/brew shellenv)
fish_add_path /usr/local/bin

starship init fish | source
zoxide init fish | source

# plugins
fundle plugin 'edc/bass'
fundle plugin 'FabioAntunes/fish-nvm'
fundle plugin 'franciscolourenco/done'
fundle plugin 'gazorby/fish-abbreviation-tips'
fundle plugin 'james2doyle/omf-plugin-fnm'

fundle init

# shell env variables
set -Ux BAT_THEME Nord 
set -Ux EDITOR nvim
#set -Ux GOPATH (go env GOPATH)
set -Ux FZF_CTRL_R_OPTS "--reverse --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
set -Ux FZF_TMUX_OPTS "-p"
set -Ux FZF_DEFAULT_COMMAND "fd -H -E '.git'"
set -Ux FZF_DEFAULT_OPTS '
--color=dark
--color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f
--color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7
'

# user path
#set -g fish_user_paths "$HOME/go/bin" $fish_user_paths
set -g fish_user_paths "$HOME/bin" $fish_user_paths

# language
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8

# aliases

# os specific abbreviations
abbr bi "arch -arm64 brew install"
abbr bug "arch -arm64 brew upgrade"

# abbreviations
abbr bc "brew cleanup"
abbr bd "brew doctor"
abbr bic "brew install --cask"
abbr bif "brew info"
abbr bifc "brew info --cask"
abbr bo "brew outdated"
abbr bs "brew services"
abbr bsr "brew services restart"
abbr bu "brew update"
abbr c "clear"
abbr dc "docker compose"
abbr dcd "docker compose down"
abbr dcdv "docker compose down -v"
abbr dcr "docker compose restart"
abbr dcu "docker compose up -d" 
abbr e "exit"
abbr g "git status"
abbr ga "git add ."
abbr gb "git branch -v"
abbr gc "git commit"
abbr gca "git commit -av"
abbr gcl "git clone"
abbr gsw "git switch -c"
abbr gd "git diff"
abbr gl "git pull"
abbr gp "git push"
abbr gr "git remote"
abbr gra "git remote add"
abbr grv "git remote -v"
abbr gs "git status"
abbr lg "lazygit"
abbr nvim "vim"
abbr rmr "rm -rf"
abbr sf "source ~/.config/fish/config.fish"
abbr st "tmux source ~/.config/tmux/tmux.conf"
abbr ta "tmux a"
abbr tat "tmux attach -t"
abbr vf "vim ~/.config/fish/config.fish"
abbr vh "vim ~/.local/share/fish/fish_history"
abbr vpc "vim +PlugClean"
abbr vpi "vim +PlugInstall"
abbr vpu "vim +PlugUpdate"
abbr vpug "vim +PlugUpgrade"
abbr vt "vim ~/.config/tmux/tmux.conf"
abbr y "yarn"
abbr ya "yarn add"
abbr yb "yarn build"

# adjust color scheme
set fish_color_autosuggestion green
set fish_color_command normal
set fish_color_error red
set fish_color_param magenta
set fish_color_redirections yellow
set fish_color_terminators white
set fish_color_valid_path normal

set -Ux LF_ICONS "\
di=:\
dt=:\
ex=:\
fi=:\
ln=:\
or=:\
ow=:\
st=:\
tw=:\
*.7z=:\
*.DS_Store=:\
*.aac=:\
*.ace=:\
*.alz=:\
*.arc=:\
*.arj=:\
*.asf=:\
*.au=:\
*.avi=:\
*.bash=:\
*.bmp=:\
*.bz2=:\
*.bz=:\
*.c=:\
*.cab=:\
*.cc=:\
*.cgm=:\
*.clj=:\
*.cmd=:\
*.coffee=:\
*.cpio=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.deb=:\
*.dl=:\
*.dwm=:\
*.dz=:\
*.ear=:\
*.emf=:\
*.env=:\
*.erl=:\
*.esd=:\
*.exs=:\
*.fish=:\
*.flac=:\
*.flc=:\
*.fli=:\
*.flv=:\
*.fs=:\
*.gif=:\
*.gitignore=:\
*.gitkeep=:\
*.gl=:\
*.go=:\
*.gz=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.jar=:\
*.java=:\
*.jl=:\
*.jpeg=:\
*.jpg=:\
*.js=:\
*.json=:\
*.lha=:\
*.lrz=:\
*.lua=:\
*.lz4=:\
*.lz=:\
*.lzh=:\
*.lzma=:\
*.lzo=:\
*.m2v=:\
*.m4a=:\
*.m4v=:\
*.md=:\
*.mdx=:\
*.mid=:\
*.midi=:\
*.mjpeg=:\
*.mjpg=:\
*.mka=:\
*.mkv=:\
*.mng=:\
*.mov=:\
*.mp3=:\
*.mp4=:\
*.mp4v=:\
*.mpc=:\
*.mpeg=:\
*.mpg=:\
*.nix=:\
*.nuv=:\
*.oga=:\
*.ogg=:\
*.ogm=:\
*.ogv=:\
*.ogx=:\
*.opus=:\
*.pbm=:\
*.pcx=:\
*.pdf=:\
*.pgm=:\
*.php=:\
*.pl=:\
*.png=:\
*.ppm=:\
*.pro=:\
*.ps1=:\
*.py=:\
*.qt=:\
*.ra=:\
*.rar=:\
*.rb=:\
*.rm=:\
*.rmvb=:\
*.rpm=:\
*.rs=:\
*.rz=:\
*.sar=:\
*.scala=:\
*.sh=:\
*.sol=ﲹ:\
*.spx=:\
*.svg=:\
*.svgz=:\
*.swm=:\
*.t7z=:\
*.tar=:\
*.taz=:\
*.tbz2=:\
*.tbz=:\
*.tga=:\
*.tgz=:\
*.tif=:\
*.tiff=:\
*.tlz=:\
*.ts=:\
*.ts=:\
*.tsx=:\
*.txz=:\
*.tz=:\
*.tzo=:\
*.tzst=:\
*.vim=:\
*.vob=:\
*.war=:\
*.wav=:\
*.webm=:\
*.wim=:\
*.xbm=:\
*.xcf=:\
*.xpm=:\
*.xspf=:\
*.xwd=:\
*.xz=:\
*.yaml=פּ:\
*.yml=פּ:\
*.yuv=:\
*.z=:\
*.zip=:\
*.zoo=:\
*.zsh=:\
*.zst=:\
*yarn.lock=:\
"

