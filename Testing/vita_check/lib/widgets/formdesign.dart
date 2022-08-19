import 'package:flutter/material.dart';

InputDecoration buildInputDecoration(String hinttext,IconData icon){
  return InputDecoration(focusColor:Colors.white ,suffixIcon: Icon(icon,color: Color.fromARGB(255, 246, 247, 248),),contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),border:OutlineInputBorder(borderRadius:BorderRadius.circular(50),borderSide: BorderSide(color: Colors.white,width: 2.0) ) ,enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2.0),borderRadius:BorderRadius.circular(50)));
}


class RoundedButton extends StatelessWidget {
 RoundedButton({required this.title, required this.colour,required this.onPressed});
 final Color colour;
 final String title;
 final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 16.0),child: Material(elevation: 5.0,shadowColor: Colors.white,color: colour,borderRadius: BorderRadius.circular(30),child:
     MaterialButton(onPressed:(){},
                  // navigation.pushNamed(context,
                  minWidth: 150,height: 42.0,child: Text(title,style: TextStyle(color: Color(0xff35A4B6),fontSize: 20)),)
                  ,),);
  }
}
