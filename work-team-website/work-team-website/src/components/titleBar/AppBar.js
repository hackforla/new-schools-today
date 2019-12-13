import React from 'react';
import AppBar from '@material-ui/core/AppBar';
import Toolbar from '@material-ui/core/Toolbar';
import IconButton from '@material-ui/core/IconButton';
import FlatButton from '@material-ui/core/Button';
import Menu from '@material-ui/core/Menu';
import MenuItem from '@material-ui/core/MenuItem';
import Typography from '@material-ui/core/Typography';
import {makeStyles} from '@material-ui/core/styles';
import MenuIcon from '@material-ui/icons/Menu';
import PeopleIcon from '@material-ui/icons/People';

import BenjaminSwerdlow from '../peoplePages/BenjaminSwerdlow';

const useStyles = makeStyles(theme => ({
    title: {
      flexGrow: 1,
      [theme.breakpoints.up('sm')]: {
        display: 'block',
      },
    },
  }));
  
export default function SearchAppBar() {
    const classes = useStyles();
    const [anchorEl, setAnchorEl] = React.useState(null);

    const handleClick = event => {
      setAnchorEl(event.currentTarget);
    };

    const handleClose = () => {
      setAnchorEl(null);
    };
  
    return (
        <AppBar position="static">
          <Toolbar>
            <BenjaminSwerdlow></BenjaminSwerdlow>

            <IconButton
              edge="start"
              color="inherit"
              aria-label="open drawer"
            >
              <MenuIcon />
            </IconButton>
            <Typography className={classes.title} variant="h6" noWrap>
              New Schools Today
            </Typography>
            <FlatButton aria-controls="simple-menu" aria-haspopup="true" onClick={handleClick} color='inherit'>
              Meet our team
              <PeopleIcon/>
            </FlatButton>
            <Menu
              id="simple-menu"
              anchorEl={anchorEl}
              open={Boolean(anchorEl)}
              onClose={handleClose}
            >
              <MenuItem onClick={handleClose}>Ethan Hopkins</MenuItem>
              <MenuItem onClick={handleClose}>Yamato Irie</MenuItem>
              <MenuItem onClick={handleClose}>Henry Marks</MenuItem>
              <MenuItem onClick={handleClose}>Araceli Aronin</MenuItem>
              <MenuItem onClick={handleClose}>Jason Telanoff</MenuItem>
              <MenuItem onClick={handleClose}>Joshua Bubar</MenuItem>
              <MenuItem onClick={handleClose}>Jordyn Feldman</MenuItem>
              <MenuItem onClick={handleClose}>Ben Swerdlow</MenuItem>
            </Menu>
            
          </Toolbar>
        </AppBar>
      
    );
    //Dean Church
    // Ben Swerdlow
    // Jordyn Feldman
    // Joshua Bubar
    // Jason Telanoff
    // Araceli Aronin
    // Henry Marks
    // Yamato Irie
    // Ethan Hopkins
}