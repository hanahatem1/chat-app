
import 'package:chat_app/constant.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget{
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Image.asset("assets/images/scholar.png"),
            Text("Scolar Chat ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28,fontFamily: "pacifico"),),
            SizedBox(height:60),
            Row(
              children:[
                Text("REGISTER ",
                  style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            CustomTextField(
              hintText: "Email",
            ),
            SizedBox(height: 10),
            CustomTextField(
              hintText: "Phone",
            ),
            SizedBox(height: 10,),
            CustomTextField(
              hintText: "Password",
            ),

            SizedBox(height: 22),
            CustomButton(
              text: "Register",
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("you have an account already?" ,style: TextStyle(color: Colors.white),),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text("  Login" ,style: TextStyle(color: Color(0xffC7EDE6)),))
              ],
            ),
          ],
        ),
      ),

    );
  }
}