#!/bin/bash

# Define replacements (modify these as needed)
from_domain="domain.duckdns.org"
to_domain="yourdomain.org"
from_email="mail@gmail.com"
to_email="mail@example.org"
from_git="git@github.com:knuurr/test-repo.git"
to_git="git@github.com:yournick/your-test-repo.git"

# Loop through all files recursively (excluding this script)
find . -type f -not -path "*.sh" -exec sed -i '' \
    -e "s/$from_domain/$to_domain/g" \
    -e "s/$from_email/$to_email/g" \
    -e "s/$from_git/$to_git/g" {} \;

echo "Replacements completed!"
