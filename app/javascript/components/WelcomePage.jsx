import React from "react";
import InputBox from "./InputBox";
import "../style/DogWalker";

class WelcomePage extends React.Component {
  constructor() {
    super();
    this.state = {
      email: ""
    };
    this.handleChangeValue = this.handleChangeValue.bind(this);
  }
  handleChangeValue(e) {
    this.setState({ email: e.target.value });
  }
  render() {
    return (
      <div id="login-box">
        <InputBox />
      </div>
    );
  }
}
export default WelcomePage;
