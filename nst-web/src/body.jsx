import React from "react";
import { Switch, Route } from "react-router-dom";
import HomePage from "./Pages/homepage";
import StaffDirectory from "./Pages/staffDirectory";
import { makeStyles } from "@material-ui/core/styles";

const useStyles = makeStyles(theme => ({
  toolbar: theme.mixins.toolbar
}));

export default function Body() {
  const classes = useStyles();

  return (
    <div>
    <div className={classes.toolbar} />

    <Switch>
      <Route exact path="/" component={HomePage} />
      <Route path="/staff" component={StaffDirectory} />
    </Switch>
    </div>
  );
}
