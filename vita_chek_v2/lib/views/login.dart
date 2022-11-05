import 'package:flutter/material.dart';
import 'package:validators/validators.dart';
import 'package:vita_chek_v2/models/custom_error.dart';
import 'package:vita_chek_v2/provider/sigin/sigin_state.dart';
import 'package:vita_chek_v2/provider/sigin/signin_provider.dart';
import 'package:provider/provider.dart';

import '../controller/error_dialog.dart';
import 'signup.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();

  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  String? _email, _password;

  void _submit() async {
    setState(() {
      _autovalidateMode = AutovalidateMode.always;
    });
    final form = _formKey.currentState;
    if (form == null || !form.validate()) return;
    form.save();
    print('email:$_email password: $_password');

    try {
      await context
          .read<SigninProvider>()
          .signin(email: _email!, password: _password!);
    } on customError catch (e) {
      errorDialog(context, e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final signinState = context.watch<SigninProvider>().state;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20),
                Image.asset(
                  "images/VitaCheck.png",
                  width: 216,
                  height: 30,
                ),
                SizedBox(height: 10),
                Image.asset(
                  "images/logo1.png",
                  width: 140,
                  height: 180,
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Stack(
                      children: [
                        Image.asset(
                          fit: BoxFit.fill,
                          "images/login.png",
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height / 1.4,
                        ),
                        Positioned(
                          top: 50,
                          left: 120,
                          child: Text(
                            "LogIn",
                            style: TextStyle(
                                fontSize: 36,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 5,
                          width: 23,
                          color: Colors.white,
                        ),
                        Positioned(
                          top: 120,
                          left: 80,
                          child: Column(
                            children: [
                              Container(
                                height: 270,
                                width: 250,
                                child: Form(
                                  key: _formKey,
                                  autovalidateMode: _autovalidateMode,
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        autofocus: false,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                             contentPadding: EdgeInsets.all(8),
                                            fillColor: Colors.white,
                                            filled: true,
                                            hintText: "Email",
                                            suffixIcon: Icon(Icons.mail),
                                            errorStyle:
                                                TextStyle(color: Colors.white)),
                                        validator: (String? value) {
                                          if (value == null ||
                                              value.trim().isEmpty) {
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
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                           contentPadding: EdgeInsets.all(8),
                                          fillColor: Colors.white,
                                          filled: true,
                                          hintText: "Password",
                                          suffixIcon:
                                              Icon(Icons.remove_red_eye),
                                          errorStyle:
                                              TextStyle(color: Colors.white),
                                        ),
                                        obscureText: true,
                                        validator: (String? value) {
                                          if (value == null ||
                                              value.trim().isEmpty) {
                                            return 'Password required';
                                          }
                                          if (value.trim().length < 6) {
                                            return 'Password must be at least 6 characteers long';
                                          }
                                          return null;
                                        },
                                        onSaved: (String? value) {
                                          _password = value;
                                        },
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Forgot Password ?",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                width: 257,
                                height: 60,
                                child: TextButton(
                                  child: Text(
                                    signinState.signinStatus ==
                                            SigninStatus.submitting
                                        ? "loading...."
                                        : "Login",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ),
                                  onPressed: signinState.signinStatus ==
                                          SigninStatus.submitting
                                      ? null
                                      : _submit,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: signinState.signinStatus ==
                                        SigninStatus.submitting
                                    ? null
                                    : () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => SignUp()),
                                        );
                                      },
                                child: Row(
                                  children: [
                                    Text(
                                      "Don’t have an account? ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => SignUp()),
                                        );
                                      },
                                      child: Text(
                                        "SignUp",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
