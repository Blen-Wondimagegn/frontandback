import React from "react";
import ReactDOM from "react-dom";
// import { BrowserRouter as Router, Route } from "react-router-dom";
// import App from "../src/components/App";
import PropTypes from "prop-types";

const Hello = (props) => <div>Hello {props.name}!</div>;

Hello.defaultProps = {
  name: "David",
};

Hello.propTypes = {
  name: PropTypes.string,
};

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(
    <Hello name="React" />,
    // <Router>
    //   <Route path="/" component={App} />
    // </Router>,
    document.body.appendChild(document.createElement("div"))
  );
});
