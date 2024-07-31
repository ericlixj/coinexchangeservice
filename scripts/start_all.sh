#!/bin/bash

# List of supported project names
SUPPORTED_PROJECTS=("admin" "chat" "exchange" "exchange-api" "market" "otc-api" "ucenter-api" "wallet")

# Default JVM options (you can customize these or pass them as arguments)
DEFAULT_JVM_OPTIONS="-Xms128m -Dspring.profiles.active=dev"

# Check if JVM options are provided as arguments
if [ $# -gt 0 ]; then
    JVM_OPTIONS="$@"
else
    JVM_OPTIONS="$DEFAULT_JVM_OPTIONS"
fi

# Function to start a project
start_project() {
    local project="$1"
    echo "Starting $project with options: $JVM_OPTIONS"
    # Replace the following line with the actual command to start your Java project
    ./startSingle4All.sh "$project" "$JVM_OPTIONS"
}

# Iterate over the list of supported projects and start each one
for project in "${SUPPORTED_PROJECTS[@]}"; do
    start_project "$project"
done

# Wait for all background jobs to finish
wait
echo "All projects have been started."

