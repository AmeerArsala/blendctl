# blendctl

## How to Run

1. Clone repo
2. `source ./profile.sh`
3. `hostexec bash -c <cmd to execute>` or `hostexec zsh -c <cmd to execute>`

Additionally, for stuff from the `.bashrc` or `.zshrc` use the `-i` flag (means interactive) for the shell exec. Examples: `hostexec bash -ic <cmd to execute>` or `hostexec zsh -ic <cmd to execute>`

