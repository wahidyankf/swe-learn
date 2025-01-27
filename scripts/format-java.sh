#!/usr/bin/env bash

# Format Java files
find apps libs -name "*.java" -type f -print0 | while IFS= read -r -d '' file; do
    java -jar "$HOME/.sdkman/candidates/maven/current/lib/google-java-format.jar" --replace "$file"
done

# Format XML files
find apps libs -name "*.xml" -type f -print0 | while IFS= read -r -d '' file; do
    # Create a temporary file
    tmp_file=$(mktemp)
    # Format XML and save to temporary file
    xmllint --format --output "$tmp_file" "$file"
    # Replace original file with formatted version
    mv "$tmp_file" "$file"
done
