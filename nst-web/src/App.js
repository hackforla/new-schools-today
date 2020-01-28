import React from 'react';
import AppBar from '@material-ui/core/AppBar';
import ToolBar from '@material-ui/core/Toolbar';
import Typography from '@material-ui/core/Typography';
import Button from '@material-ui/core/Button';
import Drawer from '@material-ui/core/Drawer';
import List from '@material-ui/core/List';
import ListItem from '@material-ui/core/ListItem';
import ListItemText from '@material-ui/core/ListItemText'
import { makeStyles } from '@material-ui/core/styles';

import './App.css';
const useStyles = makeStyles(theme => ({
  root: {
    flexGrow: 1,
  },
  menuButton: {
    marginRight: theme.spacing(2),
  },
  title: {
    flexGrow: 1,
  },
  drawerPaper: {
    width: 240,
  },
  drawer: {
    width: 240,
    flexShrink: 0,
  },
  appBar: {
    zIndex: theme.zIndex.drawer + 1,
  },
  toolbar: theme.mixins.toolbar,

}));

function App() {

  const classes = useStyles();

  return (
    <div className={classes.root}>
      <AppBar className={classes.appBar}>
        <ToolBar>
        <Typography variant="h6" className={classes.title}>
          New Schools Today
        </Typography>
        <Button color="inherit" edge="end">
          LOGIN
        </Button>
        </ToolBar>
      </AppBar>
      <Drawer 
        variant="permanent" 
        className={classes.drawer} 
        classes={{
          paper: classes.drawerPaper,
        }}>
        <div className={classes.toolbar} />
        <List>
          <ListItem button key="directory">
            <ListItemText primary="Directory" />
          </ListItem>
        </List>
      </Drawer>
    </div>
  );
}

export default App;
