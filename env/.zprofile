eval "$(/opt/homebrew/bin/brew shellenv)"

# Setting PATH for Python 3.12
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH

# Setting PATH for Python 3.11
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH
export PATH="$HOME/.local/bin:$PATH"

# Added by `rbenv init` on Wed Aug 13 12:19:13 +08 2025
# eval "$(rbenv init - --no-rehash zsh)"

# Constructor Macbook hostname
if [[ "$(hostname -s)" == "sean" ]]; then
  export AWS_PROFILE="ChapterIntegrationsGeneral-073865013699"
  export CLAUDE_CODE_USE_BEDROCK=1
fi
