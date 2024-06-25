# Switch-Project CLI Tool

An interactive CLI tool to switch between different projects in Google Cloud Platform (GCP).

## Prerequisites

Ensure you have the following installed and configured:

- Google Cloud SDK (`gcloud` command)
- Bash or Zsh shell (Suit yourself)

## Installation

### Make the Script Executable

Before running the script, ensure it has the correct permissions:

```sh
chmod +x ${$PATH_TO_SCRIPT}/switch-project.sh
```

### Make the Script Globally Accessible

To run the script from anywhere in your terminal, follow these steps:

1. **Copy the Script to `/usr/local/bin`:**

   ```sh
   sudo cp ${$PATH_TO_SCRIPT}/switch-project.sh /usr/local/bin/switch_project
   ```

2. **Make the Script Executable:**

   ```sh
   sudo chmod +x /usr/local/bin/switch_project
   ```

3. **Verify `/usr/local/bin` is in Your PATH:**

   ```sh
   echo $PATH
   ```

   Ensure that `/usr/local/bin` is included in the output. If it's not, add it to your PATH. Add the following line to your shell profile file (`.bash_profile`, `.bashrc`, `.zshrc`, etc.):

   ```sh
   export PATH=$PATH:/usr/local/bin
   ```

   Apply the changes by running:

   ```sh
   source ~/.bash_profile   # or source ~/.bashrc or source ~/.zshrc
   ```

## How to Run

### Run Directly

You can run the script directly from its location:

```sh
.${$PATH_TO_PROJECT_DIR}/switch-project.sh
```

### Run from Anywhere

After following the installation steps, you can run the script from anywhere in your terminal:

```sh
switch_project
```

## Usage

The script will list all your GCP projects and prompt you to select one. Once selected, it will switch to the chosen project.

### Example

```sh
Fetching list of projects...
Please select a project from the list:
1) project-1
2) project-2
3) project-3
#? 2
Switching to project: project-2
```