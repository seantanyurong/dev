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
eval "$(rbenv init - --no-rehash zsh)"

# Constructor Claude Code
export CLAUDE_CODE_USE_BEDROCK=1
export ANTHROPIC_MODEL="arn:aws:bedrock:us-east-1:073865013699:application-inference-profile/u1lsg1xm57m9"
export CLAUDE_CODE_SUBAGENT_MODEL="arn:aws:bedrock:us-east-1:073865013699:application-inference-profile/u1lsg1xm57m9"
export ANTHROPIC_SMALL_FAST_MODEL="arn:aws:bedrock:us-east-1:073865013699:application-inference-profile/yds5q6de5r8c"
