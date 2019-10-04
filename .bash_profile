# .bash_profile

# .bashrcの実行（存在する場合）
if [ -f ~/.pathset ]; then
  . ~/.pathset
fi

# .bashrcの実行（存在する場合）
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi