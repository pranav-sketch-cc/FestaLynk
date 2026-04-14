// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:FestaLynk/otp.dart';
import 'signin.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF2F3F5),
        body: SingleChildScrollView(
            child: Column(
              children: [
              SizedBox(height: 50,),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 15,),
                Image.asset('images/FestaLynk_logo_with_tagline.png',width: 340,),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                const Text("Forgot Password                   ",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10,),

              const Text("Enter your email to reset the password                                        ",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),

              SizedBox(height: 50,),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "E-mail",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(Icons.email, color: Colors.grey ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 60),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF1D61E7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Otp()),
                        );
                      },
                      child: Text("Reset Password",
                        style: TextStyle(
                          color: Colors.white,

                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(width: 68,),
                  Text("Back to",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signin()),
                      );
                    },
                    child: Text("Sign in            " "     ",
                      style: TextStyle(
                        color: Color(0xFF1D61E7),
                      ),
                    ),
                  )

                ],

              ),
             ],
           ),
          ),
        ],
       ),
    )
   );
  }
}