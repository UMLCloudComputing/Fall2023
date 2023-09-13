# Week 2: Project Planning, Software Engineering Practices, & DevOps

## Overview

Welcome to Week 2 of the UMass Lowell Cloud Computing Club! This week, we will delve into Project Planning, Software Engineering Practices, and an introduction to DevOps.

## Objectives

- Understand the fundamentals and importance of Project Planning.
- Gain insights into Software Engineering Practices.
- Learn the basics and significance of DevOps.

## Resources

### Slides

PowerPoint slides in this folder are in pptx and pdf format. 

### Videos
- What Is Agile Methodology? Introduction to Agile Methodology in Six Minutes: https://www.youtube.com/watch?v=8eVXTyIZ1Hs
- What is a Kanban Board?: https://www.youtube.com/watch?v=Bcid33tgq8A
- GitHub: Issues & Pull Requests: https://www.youtube.com/watch?v=d3N2yeAaLkc
- DevOps CI/CD Explained in 100 Seconds: https://www.youtube.com/watch?v=scEDHsr3APg

### Websites
- Agile Methodology: [Agile Alliance](https://www.agilealliance.org/agile101/)
- Introduction to DevOps: [AWS DevOps](https://aws.amazon.com/devops/what-is-devops/)
- Software Engineering Best Practices: [Google Engineering Practices](https://google.github.io/eng-practices/)
- Learn Git and Version Control: [Atlassian Git Tutorial](https://www.atlassian.com/git/tutorials/what-is-version-control)
- Learn Github: [GitHub Guides](https://guides.github.com/)

## Agenda

### Presentation Section:

1. **Introduction (10 minutes)**
    - Recap of last week's meeting
    - Overview of this week's topics

2. **Project Planning (20 minutes)**
    - Introduction to Agile methodologies like Scrum and Kanban
    - Importance of effective project planning in software development
    - Role of user stories and epics in defining project scope
    - Brainstorm Project Requirements and create a sample backlog

3. **Software Engineering Practices (25 minutes)**
    - Importance of code quality and readability
    - Introduction to Git as a version control system
    - Basic Git commands: `clone`, `add`, `commit`, `push`, `pull`
    - GitHub for collaborative coding: Repositories, Issues, Pull Requests
    - Discuss coding standards, linting, and code documentation
    - Role of testing: Unit tests, Integration tests, and End-to-End tests

4. **Introduction to DevOps (25 minutes)**
    - Definition and significance of DevOps in modern software development
    - Importance of Continuous Integration (CI) and Continuous Deployment (CD)
    - How Git and GitHub Actions fit into CI/CD pipelines
    - Brief overview of DevOps tools like Jenkins, Docker, and Kubernetes
    - Discuss the DevOps lifecycle: Plan, Code, Build, Test, Release, Deploy, Operate, Monitor

### Hands-On Section:

Hands-On Activity: Setting up a CI/CD Pipeline (30 minutes)

- **Node.js is required**: If you don't have Node.js and npm installed, follow the [Node.js installation guide](https://nodejs.org/en/download/).
- Make sure you can run these commands in your terminal: 
    ```
    $ node -v
    ```

    ```
    $ npm -v
    ```

##### Step 1: Fork the UniPath.io Repository
1. Navigate to `https://github.com/UMLCloudComputing/UniPath.io`
2. Click on the "Fork" button at the top-right corner to create a fork of the project in your GitHub account.

##### Step 2: Create Branches in GitHub
1. Clone your forked repository locally
2. Create a `develop` branch: `git checkout -b develop`
3. Push the `develop` branch to GitHub: `git push origin develop`

##### Step 3: AWS Amplify Setup
1. Navigate to the AWS Amplify Console
2. Click "New App" and choose "Host web app"

##### Step 4: Connect Forked GitHub Repository
1. Choose GitHub as the source repository
2. Authenticate and select the forked UniPath.io repository

##### Step 5: Configure Build Settings and Branches
1. Review the auto-detected build settings
2. Configure CI/CD for `main` and `develop` branches
3. Click "Next" and then "Save and Deploy"

##### Step 6: Monitor Build and Deploy
1. Watch the build logs in real-time
2. Verify successful deployment and access the live URL

##### Step 7: Make a Change and Observe CI/CD
1. Make a minor change in your forked UniPath.io project and push to GitHub
2. Observe the automatic build and deployment in AWS Amplify for the respective branches


## Homework

- Review Agile methodologies and DevOps principles.
- Start brainstorming ideas for the semester project.
- Go through the resources linked above to prepare for next week's meeting.

---

## Quiz: Week 2 

Check your understanding by taking the [multiple choice Quiz 2 here](./Quiz%202.md). 

## Next Week Preview

Next week, we will dive into Frontend Development with Next.js. Make sure to review the resources provided to get the most out of next week's meeting.

Feel free to reach out on our [Discord server](https://discord.gg/WC2NdqYtDt) if you have any questions or need further clarification.

See you next week!
