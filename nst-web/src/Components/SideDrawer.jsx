import React from "react";
import Drawer from "@material-ui/core/Drawer";
import List from "@material-ui/core/List";
import ListItem from "@material-ui/core/ListItem";
import ListItemText from "@material-ui/core/ListItemText";
import { makeStyles } from "@material-ui/core/styles";

const useStyles = makeStyles(theme => ({
  drawerPaper: {
    width: 240
  },
  drawer: {
    width: 240,
    flexShrink: 0
  },
  toolbar: theme.mixins.toolbar
}));

export default function SideDrawer() {
  const classes = useStyles();
  function ListItemLink(props) {
    return <ListItem button component="a" {...props} />;
  }
  return (
    <Drawer
      variant="permanent"
      className={classes.drawer}
      classes={{
        paper: classes.drawerPaper
      }}
    >
      <div className={classes.toolbar} />
      <List>
        <ListItemLink button href="./">
          <ListItemText primary="Homepage" />
        </ListItemLink>
        <ListItemLink button href="./staff">
          <ListItemText primary="Directory" />
        </ListItemLink>
      </List>
    </Drawer>
  );
}
