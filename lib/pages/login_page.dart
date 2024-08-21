
import 'package:chat_app/constant.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor:kPrimaryColor ,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            Image.asset("assets/images/scholar.png",height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Scolar Chat ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28,fontFamily: "pacifico"),),
              ],
            ),
            SizedBox(height: 75),
            Row(
              children:[
                Text("LOGIN ",
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
            SizedBox(height: 10,),
            CustomTextField(
              hintText: "Password",
            ),
            SizedBox(height: 22),
            CustomButton(text: "Login",),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("don\'t have an account?" ,style: TextStyle(color: Colors.white),),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return RegisterPage();
                      }));
                    },
                    child: Text("  Register now" ,style: TextStyle(color: Color(0xffC7EDE6)),))
              ],
            ),
          ],
        ),
      ),

    );
  }
}