# ctrl+s bind for history
stty stop undef

# ssh-agent
SSH_AGENT_FILE=$HOME/.ssh-agent
test -f $SSH_AGENT_FILE && source $SSH_AGENT_FILE
if ! ssh-add -l > /dev/null 2>&1; then
  ssh-agent > $SSH_AGENT_FILE
  source $SSH_AGENT_FILE
  ssh-add $HOME/.ssh/id_rsa
fi
