commands_to_intercept=(
  "git"
  "docker"
  "tmux"
  "nvim"
)

preexec() {
  cmd_name=$(echo "$1" | awk '{print $1}')
  for cmd in "${commands_to_intercept[@]}"; do
    if [[ "$cmd_name" == "$cmd" ]]; then
      echo "don't use $cmd"
	  exec zsh
    fi
  done
}
