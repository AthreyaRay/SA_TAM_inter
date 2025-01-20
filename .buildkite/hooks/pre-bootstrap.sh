
#!/bin/bash

COMMITTER_NAME=$(git show -s --format='%cn' HEAD)
AUTHOR_NAME=$(git show -s --format='%an' HEAD)

echo "Committer: $COMMITTER_NAME"
echo "Author: $AUTHOR_NAME"

if [ "$COMMITTER_NAME" = "GitHub" ]; then
  echo "This is a merge queue commit. Adjusting CI behavior..."
  # Skip or modify steps as needed
else
  echo "This is a standard commit. Proceeding with full CI."
  
fi
