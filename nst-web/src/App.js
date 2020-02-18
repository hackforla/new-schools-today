import React from "react";
import TopBar from "./Components/TopBar";
import SideDrawer from "./Components/SideDrawer";
import { makeStyles } from "@material-ui/core/styles";
import Body from "./body";

const useStyles = makeStyles(theme => ({
  root: {
    flexGrow: 1,
    display: 'flex',

  },
  menuButton: {
    marginRight: theme.spacing(2)
  },

  
}));

function App() {
  const classes = useStyles();

  return (
    <div className={classes.root}>
      <TopBar></TopBar>
      <SideDrawer></SideDrawer>
      <Body></Body>
    </div>
  );
}

export default App;
