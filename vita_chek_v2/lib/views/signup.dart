import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:validators/validators.dart';

import '../controller/error_dialog.dart';
import '../models/custom_error.dart';
import '../provider/signup/signup_provider.dart';
import '../provider/signup/sigup_state.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  // final _emailController = TextEditingController();

  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  String? _name, _email, _password;

  void _submit() async {
    setState(() {
      _autovalidateMode = AutovalidateMode.always;
    });
    final form = _formKey.currentState;
    if (form == null || !form.validate()) return;
    form.save();
    print('name: $_name,email:$_email password: $_password');

    try {
      await context
          .read<SignupProvider>()
          .signup(name: _name!, email: _email!, password: _password!);
    } on customError catch (e) {
      errorDialog(context, e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final signupState = context.watch<SignupProvider>().state;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
          ),
          body: SafeArea(
            child: Stack(children: [
              Image.asset(
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  "images/auth.png"),
              SizedBox(height: 20),
              Positioned(
                left: MediaQuery.of(context).size.width / 5.5,
                child: Image.asset(
                  "images/VitaCheck.png",
                  width: 216,
                  height: 30,
                ),
              ),
              SizedBox(height: 10),
              Positioned(
                left: 110,
                child: Image.asset(
                  "images/logo1.png",
                  width: 140,
                  height: 180,
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Stack(
                children: [
                  Positioned(
                    top: 230,
                    left: 140,
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "SignUp",
                            style: TextStyle(
                                fontSize: 36,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 5,
                            width: 23,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 350,
                    left: 80,
                    child: SingleChildScrollView(
                      child: Container(
                        height: 370,
                        width: 250,
                        child: Form(
                          key: _formKey,
                          autovalidateMode: _autovalidateMode,
                          child: ListView(shrinkWrap: true, children: [
                            TextFormField(
                              autocorrect: false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Your Full name",
                                errorStyle: TextStyle(color: Colors.white),
                                suffixIcon: Icon(Icons.person_outlined),
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              validator: (String? value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Name required';
                                }
                                if (value.trim().length < 2) {
                                  return 'Name  must be at least 2 characters long';
                                }
                                return null;
                              },
                              onSaved: (String? value) {
                                _name = value;
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Email",
                                errorStyle: TextStyle(color: Colors.white),
                                suffixIcon: Icon(Icons.mail),
                                labelStyle: TextStyle(color: Colors.black),
                              ),
                              validator: (String? value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Email required';
                                }
                                if (!isEmail(value.trim())) {
                                  return 'Enter a valid Email';
                                }
                                return null;
                              },
                              onSaved: (String? value) {
                                _email = value;
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: false,
                              obscureText: true,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Password",
                                errorStyle: TextStyle(color: Colors.white),
                                suffixIcon: Icon(Icons.remove_red_eye),
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              validator: (String? value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Password required';
                                }
                                if (value.trim().length < 6) {
                                  return 'Enter a valid password';
                                }
                                return null;
                              },
                              onSaved: (String? value) {
                                _password = value;
                              },
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              width: 257,
                              height: 50,
                              child: TextButton(
                                child: Text(
                                  signupState.signupStatus ==
                                          SignupStatus.submitting
                                      ? "loading...."
                                      : "Create Account",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff3E64FF),
                                  ),
                                ),
                                onPressed: signupState.signupStatus ==
                                        SignupStatus.submitting
                                    ? null
                                    : _submit,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Already have an account ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => LogIn(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "SignIn",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          )),
    );
  }
}
