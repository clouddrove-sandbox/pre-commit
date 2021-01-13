#!/usr/bin/env zsh

# Adapted from https://github.com/zricethezav/gitleaks/wiki/Scanning

gitleaks --verbose --redact
if [ $? -eq 1 ]; then
    echo "Error: gitleaks has detected sensitive information in your changes."
    exit 1
fi