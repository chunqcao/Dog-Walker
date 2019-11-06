import React from "react";
import { FormGroup, FormFeedback, Label, Input } from "reactstrap";
import { Button, Form } from "reactstrap";
import "../style/DogWalker";

class InputBox extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: {
        emailValue: "",
        emailState: "",
        previousState: ""
      },
      password: {
        psdValue: ""
      }
    };
    this.submit = this.submit.bind(this);
    this.validateEmail = this.validateEmail.bind(this);
    this.validatePassword = this.validatePassword.bind(this);
  }
  submit(e) {
    e.preventDefault();
  }

  validateEmail(e) {
    const emailRex = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    const email = { ...this.state.email };
    email.emailValue = e.target.value;
    if (emailRex.test(e.target.value)) {
      email.emailState = "has-success";
      email.previousState = "has-success";
    } else if (e.target.value == "") {
      email.emailState = "no-value";
      email.previousState = "no-value";
    } else {
      if (email.previousState === "has-success") {
        email.emailState = "has-danger";
      } else {
        email.emailState = "inputting";
      }
    }
    this.setState({ email });
  }

  validatePassword(e) {
    const password = { ...this.state.password };
    const email = { ...this.state.email };
    if (this.state.email.emailState === "inputting") {
      email.emailState = "has-danger";
    }
    if (e.target.value === "") {
      password.psdValue = "no-value";
    } else {
      password.psdValue = "has-value";
    }
    this.setState({ email });
    this.setState({ password });
  }

  render() {
    return (
      <Form className="login-form" onSubmit={this.submit}>
        <h2 className="text-center">Welcome</h2>
        <FormGroup>
          <Label>Email</Label>
          <Input
            valid={this.state.email.emailState === "has-success"}
            invalid={
              this.state.email.emailState === "no-value" ||
              this.state.email.emailState === "has-danger"
            }
            type="email"
            id="Email"
            placeholder="Email"
            onChange={this.validateEmail}
            required
          />
          <FormFeedback valid>Looks like a valid Email</FormFeedback>
          <FormFeedback>
            {this.state.email.emailState === "no-value"
              ? "Email is required"
              : "Invalid Email"}
          </FormFeedback>
        </FormGroup>
        <FormGroup>
          <Label>Password</Label>
          <Input
            invalid={this.state.password.psdValue === "no-value"}
            type="password"
            id="Password"
            placeholder="Password"
            onChange={this.validatePassword}
            required
          />
          <FormFeedback>Password is required</FormFeedback>
        </FormGroup>
        <Button className="btn-lg btn-dark btn-block mb-3">Submit</Button>
        <div className="text-center">
          <a href="/signUp">Sign Up</a>
          <span className="p-2">|</span>
          <a href="/forgetPass">Forget Password</a>
        </div>
      </Form>
    );
  }
}

export default InputBox;
