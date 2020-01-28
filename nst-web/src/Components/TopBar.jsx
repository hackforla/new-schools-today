
import React from 'react';
import AppBar from '@material-ui/core/AppBar';
import ToolBar from '@material-ui/core/Toolbar';
import Typography from '@material-ui/core/Typography';
import { makeStyles } from '@material-ui/core/styles';
import Button from '@material-ui/core/Button';

const useStyles = makeStyles(theme => 
  (
    {
      title: {
        flexGrow: 1,
      },
      appBar: {
        zIndex: theme.zIndex.drawer + 1,
      },
    }
  )
);
  
export default function TopBar() {
    const classes = useStyles();
 
    return(
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
    )
}