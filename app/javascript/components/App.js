import React, { Component, createContext } from "react";
import { Route, Switch } from "react-router-dom";

class App extends Component {
  render() {
    return (
      <AuthProvider>
        <Navbar />
        <Switch>
          <Route exact path="/" component={Diets} />
        </Switch>
      </AuthProvider>
    );
  }
}

export default App;
