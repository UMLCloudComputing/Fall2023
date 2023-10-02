
# React and MUI Tutorial: Building an Album Layout

> A CodeSandBox with the complete code and preview is available [here](https://codesandbox.io/s/uml-cloud-computing-club-mui-basic-tutorial-828hwy?file=/App.js).


In this tutorial, we will walk through how to create an album layout using React and [Material-UI (MUI)](https://mui.com/material-ui/getting-started/). The code provided demonstrates how to structure a React application and utilize MUI components to build a visually appealing album layout.

## Prerequisites

- Please complete the offical [React Tic-Tac-Toe Tutorial](https://react.dev/learn/tutorial-tic-tac-toe) before starting this tutorial! That tutorial will teach you the basics of React and important concepts such as components, props, and state. 

## Step 1: Setting Up Your React Project

1. Ensure that [Node.js](https://nodejs.org/) is installed on your machine.
2. Open your terminal and run the following command to create a new React project:
```bash
npx create-react-app my-album
```
3. Once the command completes, navigate to your project folder:
```bash
cd my-album
```
4. Create-React-App generates a starter project with the following structure: 
```
├── public
│   ├── favicon.ico
│   ├── index.html
│   ├── logo192.png
│   ├── logo512.png
│   ├── manifest.json
│   └── robots.txt
└── src
    ├── App.css
    ├── App.js
    ├── App.test.js
    ├── index.css
    ├── index.js
    ├── logo.svg
    ├── reportWebVitals.js
    └── setupTests.js
```
- The `node_modules` folder contains the dependencies for the project. This is where NPM installs all the packages that the project depends on.
- The `public` folder contains static assets such as images and the `index.html` file which is the page template.
- The `src` folder contains the source code for the React application.
  - The `App.js` file is the main component of the application.
  - The `index.js` file is the entry point of the application.
- The `package.json` and `package-lock.json` files contain information about the project and its dependencies.
5. Run the live development server to see the default project in action:
```bash
npm start
```
- The development server should automatically open a browser window with the default project running at `http://localhost:3000/`.
- The development server will automatically reload if you make changes to the code.
- You can stop the development server by pressing `Ctrl + C` in the terminal.
1. We don't need the default project files, so feel free to delete the following files:
```
├── src
│   ├── App.css
│   ├── App.test.js
│   ├── index.css
│   ├── logo.svg
│   ├── reportWebVitals.js
│   └── setupTests.js
```
1. Now, install the MUI library according to the [official documentation](https://mui.com/material-ui/getting-started/installation/):
```bash
npm install @mui/material @emotion/react @emotion/styled @mui/icons-material
```
1. The `index.js` file is the entry point of the application. Open the `src/index.js` file and replace the contents with the following code:
```javascript
import * as React from 'react';
import * as ReactDOM from 'react-dom/client';
import { StyledEngineProvider } from '@mui/material/styles';
import Demo from './Demo';

ReactDOM.createRoot(document.querySelector("#root")).render(
  <React.StrictMode>
    <StyledEngineProvider injectFirst>
      <Demo />
    </StyledEngineProvider>
  </React.StrictMode>
);
```

Now you have a new React project set up with the MUI library installed. There should only be two files in your `src` folder: `index.js` and `App.js`. The `index.js` file is the entry point of the application. The `App.js` file is the main component of the application. 

If the development server is still running and giving an error, this is because we haven't yet updated the `App.js` file to contain the main component of the application. Complete the entire tutorial and then restart the development server to see the final result. It's fine to leave the development server running while you work on the tutorial.

## Step 2: Importing MUI Components

Open the `src/App.js` file and start by importing the necessary MUI components at the top of your file:

```javascript
// React
import * as React from "react";

// MUI: Components
import { createTheme, ThemeProvider } from "@mui/material/styles";
import AppBar from "@mui/material/AppBar";
import Button from "@mui/material/Button";
import Card from "@mui/material/Card";
import CardActions from "@mui/material/CardActions";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import CssBaseline from "@mui/material/CssBaseline";
import Grid from "@mui/material/Grid";
import Stack from "@mui/material/Stack";
import Box from "@mui/material/Box";
import Toolbar from "@mui/material/Toolbar";
import Typography from "@mui/material/Typography";
import Container from "@mui/material/Container";
import Link from "@mui/material/Link";

// MUI: Icons
import CameraIcon from "@mui/icons-material/PhotoCamera";
```

We import the `createTheme` and `ThemeProvider` functions from `@mui/material/styles` to create a default theme for our application. We also import the `CssBaseline` component from `@mui/material` to apply some basic CSS styles to our application. The rest of the imports are MUI components that we will use to build our album layout.

## Step 3: Creating a Header Component

Let's create a `Header` component to display a simple header bar with a title:

```javascript
// Header Component
function Header() {
  return (
    <AppBar position="relative">
      <Toolbar>
        <CameraIcon sx={{ mr: 2 }} />
        <Typography variant="h6" color="inherit" noWrap>
          Album layout
        </Typography>
      </Toolbar>
    </AppBar>
  );
}
```

In the `Header` component, we use the `AppBar` component to create a header bar. The `AppBar` component is a wrapper component that positions the `Toolbar` component at the top of the page. The `Toolbar` component is a wrapper component that positions its children horizontally. We use the `Typography` component to display the title of the page. The `Typography` component is a wrapper component that displays text with a specific font and color.

We use the following MUI components: 
- `AppBar` component: https://mui.com/material-ui/react-app-bar/
  - `position` prop: https://mui.com/api/app-bar/#props
- `Toolbar` component: https://mui.com/material-ui/toolbar/
- `Typography` component: https://mui.com/material-ui/typography/
  - `variant` prop: https://mui.com/api/typography/#props
  - `color` prop: https://mui.com/api/typography/#props
  - `noWrap` prop: https://mui.com/api/typography/#props
- `CameraIcon` component: https://mui.com/material-ui/icons/photo-camera/

We also use the following MUI props for styling:
- `sx` prop: https://mui.com/system/the-sx-prop/
- `mr` prop: https://mui.com/system/spacing/

## Step 4: Creating a Hero Unit Component

A hero unit is a common design element that provides a visual focus to the page. Let’s create a `HeroUnit` component:

```javascript
// Hero Component
function HeroUnit() {
  return (
    <Box
      sx={{
        bgcolor: "background.paper",
        pt: 8,
        pb: 6
      }}
    >
      <Container maxWidth="sm">
        <Typography
          component="h1"
          variant="h2"
          align="center"
          color="text.primary"
          gutterBottom
        >
          Album layout
        </Typography>
        <Typography
          variant="h5"
          align="center"
          color="text.secondary"
          paragraph
        >
          Something short and leading about the collection below—its contents,
          the creator, etc. Make it short and sweet, but not too short so folks
          don&apos;t simply skip over it entirely.
        </Typography>
        <Stack
          sx={{ pt: 4 }}
          direction="row"
          spacing={2}
          justifyContent="center"
        >
          <Button variant="contained">Main call to action</Button>
          <Button variant="outlined">Secondary action</Button>
        </Stack>
      </Container>
    </Box>
  );
}
```

In the `HeroUnit` component, we use the `Box` component to create a container for the hero unit. The `Box` component is a wrapper component that provides styling and layout options. We use the `Container` component to create a fixed-width container for the hero unit. The `Container` component is a wrapper component that provides a responsive fixed-width container. We use the `Typography` component to display the title and description of the hero unit. We use the `Stack` component to display the buttons in a horizontal row. We use the `Button` component to display the buttons.

We use the following MUI components:
- `Box` component: https://mui.com/material-ui/box/
- `Container` component: https://mui.com/material-ui/container/
- `Typography` component: https://mui.com/material-ui/typography/
- `Stack` component: https://mui.com/material-ui/stack/


## Step 6: Creating a Card Grid

Now, let’s create a grid of cards to display some content. First, define an array of cards, and then create the `CardGrid` component:

```javascript
// Card Layout
function CardGrid() {

  // Cards array
  const cards = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  return (
    <Container sx={{ py: 8 }} maxWidth="md">
      <Grid container spacing={4}>
        {cards.map((card) => (
          <Grid item key={card} xs={12} sm={6} md={4}>
            <Card
              sx={{
                height: "100%",
                display: "flex",
                flexDirection: "column"
              }}
            >
              <CardMedia
                component="div"
                sx={{
                  // 16:9
                  pt: "56.25%"
                }}
                image="https://source.unsplash.com/random?wallpapers"
              />
              <CardContent sx={{ flexGrow: 1 }}>
                <Typography gutterBottom variant="h5" component="h2">
                  Heading
                </Typography>
                <Typography>
                  This is a media card. You can use this section to describe the
                  content.
                </Typography>
              </CardContent>
              <CardActions>
                <Button size="small">View</Button>
                <Button size="small">Edit</Button>
              </CardActions>
            </Card>
          </Grid>
        ))}
      </Grid>
    </Container>
  );
}
```

In the `CardGrid` component, we use the `Container` component to create a fixed-width container for the card grid. We use the `Grid` component to create a responsive grid layout. We use the `Card` component to create a card. We use the `CardMedia` component to display an image in the card. We use the `CardContent` component to display the content of the card. We use the `CardActions` component to display the actions of the card.

We use the following MUI components:
- `Container` component: https://mui.com/material-ui/container/
- `Grid` component: https://mui.com/material-ui/grid/
  - `container` prop: https://mui.com/api/grid/#props
  - `item` prop: https://mui.com/api/grid/#props
  - `xs` prop: https://mui.com/api/grid/#props
  - `sm` prop: https://mui.com/api/grid/#props
  - `md` prop: https://mui.com/api/grid/#props
  - `spacing` prop: https://mui.com/api/grid/#props- `Card` component: https://mui.com/material-ui/card/
- `CardMedia` component: https://mui.com/material-ui/card-media/
- `CardContent` component: https://mui.com/material-ui/card-content/
- `CardActions` component: https://mui.com/material-ui/card-actions/
- `Button` component: https://mui.com/material-ui/button/
  - `size` prop: https://mui.com/api/button/#props
  - `variant` prop: https://mui.com/api/button/#props
  - `color` prop: https://mui.com/api/button/#props
- `Typography` component: https://mui.com/material-ui/typography/
  - `gutterBottom` prop: https://mui.com/api/typography/#props
  - `variant` prop: https://mui.com/api/typography/#props
  - `component` prop: https://mui.com/api/typography/#props

> The grid system works on a 12-column grid. The `Grid` component is a wrapper component that positions its children in a grid layout. The `Grid` component has a `container` prop that positions its children in a grid layout. The `Grid` component has an `item` prop that positions its children in a grid layout. The `Grid` component has an `xs` prop that specifies the number of columns to occupy on extra small screens. The `Grid` component has an `sm` prop that specifies the number of columns to occupy on small screens. The `Grid` component has an `md` prop that specifies the number of columns to occupy on medium screens. The `Grid` component has a `spacing` prop that specifies the spacing between grid items.

## Step 7: Creating a Footer

Create a `Footer` component to display some information at the bottom of the page:

```javascript
// Copyright Component for Footer
function Copyright() {
  return (
    <Typography variant="body2" color="text.secondary" align="center">
      {"Copyright © "}
      <Link color="inherit" href="https://mui.com/">
        Your Website
      </Link>{" "}
      {new Date().getFullYear()}
      {"."}
    </Typography>
  );
}

// Footer Component
function Footer() {
  return (
    <Box sx={{ bgcolor: "background.paper", p: 6 }} component="footer">
      <Typography variant="h6" align="center" gutterBottom>
        Footer
      </Typography>
      <Typography
        variant="subtitle1"
        align="center"
        color="text.secondary"
        component="p"
      >
        Something here to give the footer a purpose!
      </Typography>
      <Copyright />
    </Box>
  );
}
```

In the `Footer` component, we use the `Box` component to create a container for the footer. We use the `Typography` component to display the title and description of the footer. We use the `Link` component to display a link in the footer.


## Step 8: Composing the Main Component

Now, let’s bring it all together by creating the main `Album` component:

```javascript
export default function Album() {

  // Theme
  const defaultTheme = createTheme();

  return (
    <ThemeProvider theme={defaultTheme}>
      <CssBaseline />
      <Header />
      <main>
        <HeroUnit />
        <CardGrid />
      </main>
      <Footer />
    </ThemeProvider>
  );
}
```

In the `Album` component, we use the `ThemeProvider` component to provide a default theme for the application. We use the `CssBaseline` component to apply some basic CSS styles to the application. We use the `Header` component to display the header bar. We use the `HeroUnit` component to display the hero unit. We use the `CardGrid` component to display the card grid. We use the `Footer` component to display the footer.

## Conclusion

Now, your `src/App.js` should contain all the components and the main `Album` component which is exported as the default export. This `Album` component can now be rendered in `src/index.js` to display the entire page.

This incremental approach, building up from simpler components to more complex ones, and then composing them together in a main component, is a typical pattern in React development.

Congratulations! You have successfully completed the tutorial. You can now use the MUI library to build your own React applications.

A CodeSandBox with the complete code and preview is available [here](https://codesandbox.io/s/uml-cloud-computing-club-mui-basic-tutorial-828hwy?file=/App.js).
