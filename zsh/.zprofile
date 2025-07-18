alias python="python3"
alias pip="pip3"
alias yt-dlp-aud="yt-dlp -x --audio-format mp3"

# Setting PATH for Python 3.13
# The original version is saved in .zprofile.pysave
export PATH="$HOME/Library/Python/3.13/bin:/Library/Frameworks/Python.framework/Versions/3.13/bin:$PATH"
export SSL_CERT_FILE=$(python3 -m certifi)

export PATH="/opt/homebrew/bin:$PATH"
