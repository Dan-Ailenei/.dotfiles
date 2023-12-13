Requirements:

* https://github.com/zsh-users/antigen
* https://github.com/junegunn/fzf
* https://github.com/nvbn/thefuck
* stow

You need to install/apply configs:
    - tmux: tmux source .tmux.conf
    - nvim: :so :PackerSync
    - skhd: skhd --restart-service
    - yabai: yabairc --restart-service


Things to have in mind:
    - on mac, configure iterm to call tmux-sessionizer\n on cmd + f

TODO:
   - make some script that installs everything (maybe ansible)

