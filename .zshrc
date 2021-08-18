# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# SCRIPT_DIR=$HOME/dotfiles

# source $SCRIPT_DIR/zsh/config.zsh
# source $SCRIPT_DIR/zsh/p10k.zsh
# source $SCRIPT_DIR/zsh/plugins.zsh
# source $SCRIPT_DIR/zsh/alias.zsh
# source $SCRIPT_DIR/zsh/neta.zsh

############################
# 分割ファイルの読み込み
############################
ZSHHOME="${HOME}/dotfiles/.zsh"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \ -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi