import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:velocity_x/velocity_x.dart';

class Sign_In extends StatelessWidget {
  const Sign_In({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/background.png"), fit: BoxFit.contain),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 300,
              width: 200,
              child: Column(
                children: [
                  "Sign in to continue".text.lg.make(),
                  "Vegi"
                      .text
                      .xl4
                      .white
                      .bold
                      .shadow(3, 3, 10, Colors.green)
                      .make()
                      .py12(),
                  
                  SignInButton(
                  Buttons.Apple,
                  text: "Sign up with Apple",
                  onPressed:(){},
                  shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
            ),
                  ),
                  HeightBox(20),
                  SignInButton(
                  Buttons.Google,
                  text: "Sign up with Google",
                  onPressed:(){},
                  shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
            ),
                  
                  ),
                  HeightBox(30),

                  "By sign in you are agreeing our terms and condition".text.center.gray700.make()
  
                                  

                 ],
                 

              ))
        ],
      ),
    ));
  }
}
