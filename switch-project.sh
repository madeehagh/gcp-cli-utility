#!/bin/bash

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
