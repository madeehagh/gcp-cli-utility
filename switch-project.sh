#!/bin/bash

# List all accounts and select one interactively
echo "Fetching list of accounts..."
accounts=$(gcloud auth list --format="value(account)")

echo "Please select an account from the list:"
select account in $accounts; do
  if [ -n "$account" ]; then
    echo "Switching to account: $account"
    gcloud auth login "$account"
    break
  else
    echo "Invalid selection, please try again."
  fi
done

# List all projects and select one interactively
echo "Fetching list of projects..."
projects=$(gcloud projects list --format="value(projectId)")

echo "Please select a project from the list:"
select project in $projects; do
  if [ -n "$project" ]; then
    echo "Switching to project: $project"
    gcloud config set project "$project"
    break
  else
    echo "Invalid selection, please try again."
  fi
done
