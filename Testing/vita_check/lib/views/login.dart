import 'package:flutter/material.dart';
import 'package:vita_check/views/sensor_data.dart';
import 'package:vita_check/widgets/formdesign.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Login extends StatefulWidget {
  
 Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
// flutter pub get firebase_core 
final _controller=TextEditingController();

// @override 
  final _auth=FirebaseAuth.instance;

 String email="";

 String password="";

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
                          TextField(keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.white,),onChanged: (value) {
                            print(value);
                            email=value;},
                          
                          decoration: buildInputDecoration("Enter Email",Icons.email,Icons.check),),SizedBox(height: 20.0,),
                          Text("Password",style: TextStyle(color: Colors.white,)),SizedBox(height: 8.0,),
                          TextField(controller: _controller,style: TextStyle(color: Colors.white,),onChanged: (value) {print(value);
                          password=value;},obscureText:true,
                          
                          decoration: buildInputDecoration("Enter Password",Icons.lock,Icons.remove_red_eye),),SizedBox(height: 8.0,),
                         Row(crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             RoundedButton(title: "log In",colour: Colors.white,onPressed: (){ Navigator.push(
              context,
             MaterialPageRoute(builder: (context)=> const SensorData()));
                              },),SizedBox(width: 20,), RoundedButton(title: "Register",colour: Colors.white,onPressed: ()async {
                                try {
                                final newUser=await _auth.createUserWithEmailAndPassword(email: email, password: password);
                                if(newUser != null){
                                Navigator.push(
              context,
             MaterialPageRoute(builder: (context)=> const SensorData()));}}
             catch(e){
              print(e);
             }
             },)
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

