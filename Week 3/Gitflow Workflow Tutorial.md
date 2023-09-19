# Git Workflow Tutorial for UniPath.io

## Introduction

This tutorial aims to guide you through the process of contributing to the UniPath.io project using Git. We'll cover how to fork the repository, create branches, make changes, and submit a pull request.

## Prerequisites

- Git installed on your local machine
- GitHub account
- Basic understanding of Git commands

## Workflow Steps

### 1. Fork the Repository

1. Navigate to the [UniPath.io GitHub repository](https://github.com/UMLCloudComputing/UniPath.io).
2. Click on the "Fork" button at the top-right corner. This will create a fork of the project in your GitHub account.

### 2. Clone Your Forked Repository

Open your terminal and run:

```bash
git clone git@github.com:[Your_Username]/UniPath.io.git
```

### 3. Navigate to the Project Directory

```bash
cd UniPath.io
```

### 4. Add Upstream Remote

To keep your fork updated with the changes in the original repository, add an upstream remote:

```bash
git remote add upstream https://github.com/UMLCloudComputing/UniPath.io.git
```

### 5. Create a New Branch

Create a new branch for the feature or fix you're working on:

```bash
git checkout -b [branch_name]
```

### 6. Make Your Changes

Implement your feature or fix and commit the changes:

```bash
git add .
git commit -m "Your commit message"
```

### 7. Push to Your Fork

Push the changes to your forked repository:

```bash
git push origin [branch_name]
```

### 8. Create a Pull Request

1. Go to your forked repository on GitHub.
2. Click on "New Pull Request".
3. Select the original repository as the base repository and choose the "develop" branch for comparison.
4. Fill in the pull request details and submit it.

   **Note:**
   - Make the request to the "develop" branch.
   - Submitting the pull request will kick off a GitHub Actions workflow to test your code build.
   - It will also trigger an AWS Amplify hosting build preview to verify your changes.



### 9. Sync Your Fork

To sync your fork with the original repository:

```bash
git checkout main
git fetch upstream
git merge upstream/main
git push origin main
```

## Additional Resources

![DevOps](https://github.com/UMLCloudComputing/UniPath.io/raw/main/Contribution-Guideline/Images/BranchProc.png)

Please refer to the UniPath.io [Contributing Guidelines](https://github.com/UMLCloudComputing/UniPath.io/tree/main/Contribution-Guidelines) for more information on how to contribute to the project.

## Conclusion

This tutorial provides a step-by-step guide on how to contribute to the UniPath.io project using Git. By following these steps, you can effectively collaborate with other contributors and maintain a clean Git history.

Happy coding!
