# Getting Started with Node.js and Web Development using NVM

Node Version Manager (NVM) is a tool that allows you to download and install multiple versions of Node.js and npm. This tutorial will guide you through the process of installing NVM and using it to set up a Node.js development environment.

## Prerequisites

- A computer running macOS, Linux, or Windows (WSL)
- Basic knowledge of the command line interface (CLI)

## Step 1: Install NVM

### For macOS and Linux:

1. Open your terminal.
2. Run the following command to download and install NVM:

    ```bash
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
    ```

    or

    ```bash
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
    ```

3. Close and reopen your terminal to apply the changes.

### For Windows (WSL):

1. Open your WSL terminal.
2. Follow the [Windows installation guide](https://github.com/nvm-sh/nvm#installing-and-updating) on the NVM GitHub repository.

## Step 2: Verify NVM Installation

Run the following command to verify that NVM is installed:

```bash
nvm --version
```

You should see the version number of the installed NVM.

## Step 3: Install Node.js

1. To install the latest version of Node.js, run:

    ```bash
    nvm install node
    ```

2. To install a specific version, run:

    ```bash
    nvm install [version]
    ```

    Replace `[version]` with the version number you want to install.

## Step 4: Switch Between Node Versions

1. To list all installed versions, run:

    ```bash
    nvm ls
    ```

2. To switch to a specific version, run:

    ```bash
    nvm use [version]
    ```

    Replace `[version]` with the version number you want to use.

## Step 5: Update Node.js

To update to the latest version of Node.js, run:

```bash
nvm install node --reinstall-packages-from=node
```

## Step 6: Uninstall Node.js Version

To uninstall a specific version of Node.js, run:

```bash
nvm uninstall [version]
```

Replace `[version]` with the version number you want to uninstall.

## Conclusion

Congratulations! You've successfully installed NVM and set up a Node.js development environment. You can now easily switch between different Node.js versions and manage your projects more efficiently.

For more details, you can visit the [NVM GitHub repository](https://github.com/nvm-sh/nvm).

Happy coding! 🎉
