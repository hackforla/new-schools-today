import React from "react";
import TopBar from "./Components/TopBar";
import Drawer from "@material-ui/core/Drawer";
import List from "@material-ui/core/List";
import ListItem from "@material-ui/core/ListItem";
import ListItemText from "@material-ui/core/ListItemText";
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

  drawerPaper: {
    width: 240
  },
  drawer: {
    width: 240,
    flexShrink: 0
  },
  toolbar: theme.mixins.toolbar
}));

function App() {
  const classes = useStyles();

  return (
    <div className={classes.root}>
      <TopBar></TopBar>
      <Drawer
        variant="permanent"
        className={classes.drawer}
        classes={{
          paper: classes.drawerPaper
        }}
      >
        <div className={classes.toolbar} />
        <List>
          <ListItem button key="directory">
            <ListItemText primary="Directory" />
          </ListItem>
        </List>
      </Drawer>
      <Body></Body>
    </div>
  );
}

export default App;
