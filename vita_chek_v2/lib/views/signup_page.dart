// import 'package:flutter/material.dart';
// import 'package:validators/validators.dart';
// import 'package:vita_chek_v2/models/custom_error.dart';
// import 'package:vita_chek_v2/provider/signup/sigup_state.dart';
// import 'package:provider/provider.dart';

// import '../controller/error_dialog.dart';
// import '../provider/sigin/sigin_state.dart';
// import '../provider/signup/signup_provider.dart';

// class signupPage extends StatefulWidget {
//   const signupPage({super.key});
//   static const String routeName = '/signin';

//   @override
//   State<signupPage> createState() => _signupPageState();
// }

// class _signupPageState extends State<signupPage> {
//   final _formKey = GlobalKey<FormState>();
//   final _passwordController = TextEditingController();

//   AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

//   String? _name, _email, _password;

//   void _submit() async {
//     setState(() {
//       _autovalidateMode = AutovalidateMode.always;
//     });
//     final form = _formKey.currentState;
//     if (form == null || !form.validate()) return;
//     form.save();
//     print('email:$_email password: $_password');

//     try {
//       await context
//           .read<SignupProvider>()
//           .signup(name: _name!, email: _email!, password: _password!);
//     } on customError catch (e) {
//       errorDialog(context, e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // ignore: prefer_typing_uninitialized_variables
//     final signupState = context.watch<SignupProvider>().state;
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30.0),
//             child: Form(
//               key: _formKey,
//               autovalidateMode: _autovalidateMode,
//               child: ListView(
//                 shrinkWrap: true,
//                 children: [
//                   Image.asset(
//                     "images/logo1.png",
//                     width: 250,
//                     height: 250,
//                   ),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//                   TextFormField(
//                     autocorrect: false,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       filled: true,
//                       labelText: "Your Full name",
//                       suffixIcon: Icon(Icons.person),
//                       labelStyle: TextStyle(
//                         color: Colors.purple.withOpacity(.8),
//                       ),
//                     ),
//                     validator: (String? value) {
//                       if (value == null || value.trim().isEmpty) {
//                         return 'Name required';
//                       }
//                       if (value.trim().length < 2) {
//                         return 'Name  must be at least 2 characters long';
//                       }
//                       return null;
//                     },
//                     onSaved: (String? value) {
//                       _name = value;
//                     },
//                   ),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//                   TextFormField(
//                     keyboardType: TextInputType.emailAddress,
//                     autocorrect: false,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       filled: true,
//                       labelText: "Email",
//                       suffixIcon: Icon(Icons.email_sharp),
//                     ),
//                     validator: (String? value) {
//                       if (value == null || value.trim().isEmpty) {
//                         return 'Email required';
//                       }
//                       if (!isEmail(value.trim())) {
//                         return 'Enter a valid Email';
//                       }
//                       return null;
//                     },
//                     onSaved: (String? value) {
//                       _email = value;
//                     },
//                   ),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//                   TextFormField(
//                     controller: _passwordController,
//                     keyboardType: TextInputType.emailAddress,
//                     autocorrect: false,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       filled: true,
//                       labelText: "Password",
//                       suffixIcon: Icon(Icons.remove_red_eye),
//                     ),
//                     validator: (String? value) {
//                       if (value == null || value.trim().isEmpty) {
//                         return 'Email required';
//                       }
//                       if (!isEmail(value.trim())) {
//                         return 'Enter a valid Email';
//                       }
//                       return null;
//                     },
//                     onSaved: (String? value) {
//                       _email = value;
//                     },
//                   ),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//                   TextFormField(
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       filled: true,
//                       labelText: "Confirm Password",
//                       suffixIcon: Icon(Icons.remove_red_eye),
//                     ),
//                     validator: (String? value) {
//                       if (_passwordController.text != value) {
//                         return 'Passwords not match';
//                       }

//                       return null;
//                     },
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(6),
//                     ),
//                     width: 257,
//                     height: 60,
//                     child: TextButton(
//                       child: Text(
//                         signupState.signupStatus == SignupStatus.submitting
//                             ? "loading...."
//                             : "Login",
//                         style: TextStyle(
//                           fontSize: 24,
//                           color: Color(0xff3E64FF),
//                         ),
//                       ),
//                       onPressed:
//                           signupState.signupStatus == SignupStatus.submitting
//                               ? null
//                               : _submit,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   GestureDetector(
//                     onTap: signupState.signupStatus == SigninStatus.submitting
//                         ? null
//                         : () {
//                             Navigator.pop(
//                               context,
//                             );
//                           },
//                     child: Row(
//                       children: [
//                         Text(
//                           "Don’t have an account? ",
//                           style: TextStyle(color: Colors.white, fontSize: 14),
//                         ),
//                         Text(
//                           "SignUp",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                               fontSize: 14),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
