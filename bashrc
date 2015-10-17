# global environment variables
export GOROOT="/usr/local/go"
export GOPATH="$HOME/workspace/go"
export JAVA_HOME=$(/usr/libexec/java_home)

# various path assignments
GO="$GOPATH/bin:$GOROOT/bin"
HOMEBIN="$HOME/bin"
NPM="/usr/local/lib/node_modules"
NPM_BIN="$PWD/node_modules/.bin"

export PATH="$NPM_BIN:$NPM:$GO:$HOMEBIN:$PATH"
