
#!/bin/bash

# My name is Osama

: <<'COMMENT'
This is a multiline comment.
This is a bash file.
COMMENT

service="$1"

if [ -z "$service" ]; then
    echo "Usage: $0 <package-name>"
    exit 1
fi

if dpkg -s "$service" >/dev/null 2>&1; then
    echo "$service is installed"
else
    echo "$service is not installed"
fi
