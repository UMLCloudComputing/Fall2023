# Getting Started with Next.js

## Creating a Next.js Project

1. Open your terminal and navigate to the directory where you want to create your new Next.js project.
2. Run the following command to create a new Next.js application:
    ```bash
    npx create-next-app your-app-name
    ```
3. Navigate into your project's directory:
    ```bash
    cd your-app-name
    ```
4. Run your Next.js application to make sure everything is set up correctly:
    ```bash
    npm run dev
    ```

## Understanding the File Structure

### Top-level Folders

- `app`: App Router
- `public`: Static assets to be served
- `src`: Optional application source folder

### Top-level Files

- `next.config.js`: Configuration file for Next.js
- `package.json`: Project dependencies and scripts
- `.env`: Environment variables

### App Routing Conventions

- `layout.js`: Layout
- `page.js`: Page
- `loading.js`: Loading UI
- `not-found.js`: Not found UI
- `error.js`: Error UI

### Dynamic Routes

- `[folder]`: Dynamic route segment
- `[...folder]`: Catch-all route segment
- `[[...folder]]`: Optional catch-all route segment

For more details, you can refer to the [official documentation](https://nextjs.org/docs/getting-started/project-structure).

