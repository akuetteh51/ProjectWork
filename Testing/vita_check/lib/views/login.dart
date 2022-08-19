import 'package:flutter/material.dart';
import 'package:vita_check/widgets/formdesign.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
// flutter pub get firebase_core 
// flutter pub get firebase_auth
// flutter pub get cloud_firestore

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Stack(children: [Container(child: Image.asset( "assets/background.png",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,),),Container(child: Form(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: [Column(
                    children: [SizedBox(height: 80,),Image.asset("assets/VitaCheck.png"),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email",style: TextStyle(color: Colors.white,)),SizedBox(height: 8.0,),
                          TextField(style: TextStyle(color: Colors.white,),onChanged: (value) {print(value);},
                          
                          decoration: buildInputDecoration("Enter Email",Icons.email),),SizedBox(height: 20.0,),
                          Text("Password",style: TextStyle(color: Colors.white,)),SizedBox(height: 8.0,),
                          TextField(style: TextStyle(color: Colors.white,),onChanged: (value) {print(value);},obscureText:true,
                          
                          decoration: buildInputDecoration("Enter Password",Icons.lock),),SizedBox(height: 8.0,),
                         Row(crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             RoundedButton(title: "log In",colour: Colors.white,onPressed: (){},),SizedBox(width: 20,), RoundedButton(title: "Register",colour: Colors.white,onPressed: (){},)
                           ],
                         )
                        ],
                      ),
                    ],
                  ),
                  ]
                ),
              )),)]),
    ),);

  }
}

