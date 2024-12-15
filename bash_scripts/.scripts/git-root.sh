# Check for argument
if [ -z "$1" ]; then
    echo "Provide directory to check"
    exit 1
fi

git -C $1 rev-parse --show-toplevel
