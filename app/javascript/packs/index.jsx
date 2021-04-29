import React from "react";
import ReactDOM from "react-dom";
import PropTypes from "prop-types";
// import { BrowserRouter as Router, Route } from "react-router-dom";
// import App from "../src/components/App";

const Hello = (props) => <div> Hello {props.name}!</div>;

Hello.PropTypes = {
  name: PropTypes.string,
};

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(
    // <Router>
    //   <Route path="/" component={App} />
    // </Router>,
    <Hello name="React" />,
    document.body.appendChild(document.createElement("div"))
  );
});
