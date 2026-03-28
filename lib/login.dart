import 'package:flutter/material.dart';
import 'package:smp/Home.dart';
import 'package:smp/forgotPassword.dart';
import 'package:smp/signin.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isPasswordVisible = false;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F3F5),
        body:SingleChildScrollView(
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
                const Text("Sign in to your ""            "
                    "account",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10,),

                const Text("Enter your E-mail and Password to login                               ",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey
                ),
                ),

                SizedBox(height: 20,),

                TextField(
                  decoration: InputDecoration(
                    hintText: "E-mail",
                    prefixIcon: Icon(Icons.email),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                TextField(
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: IconButton(
                        icon: Icon(
                          isPasswordVisible? Icons.visibility : Icons.visibility_off,
                        ),
                      onPressed: (){
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                      },
                    )
                  ),
                ),

                SizedBox(height: 5,),

                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                        activeColor: Color(0xFF1D61E7),
                        value: rememberMe,
                        onChanged: (value){
                          setState(() {
                            rememberMe = value!;
                          });
                        },
                    ),
                    Text("Remember me"),

                    Spacer(),

                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Forgotpassword()),
                    );
                  },
                  child: Text("Forgot Password?",
                  style: TextStyle(
                    color: Color(0xFF1D61E7),

                  )
                  ),
                 ),
               ],
             ),

                SizedBox(height: 15,),

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
                        MaterialPageRoute(builder: (context) => const Home())
                      );
                    },
                    child: Text("Log in",
                    style: TextStyle(
                      color: Colors.white,

                    ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                Row(
                  children: [
                    Expanded(
                      child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("OR"),
                    ),
                    Expanded(
                      child: Divider()),
                  ],
                ),
                SizedBox(height: 10,),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  child: Row(
                    children: [
                      SizedBox(width: 90,),
                      Image.asset('images/google.png',width: 30,),
                      SizedBox(width: 6,),
                      Center(
                        child: Text("Continue with Google",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 90,),
                      Image.asset('images/facebook.png',width: 27,),
                      SizedBox(width: 6,),
                      Center(
                        child: Text("Continue with Facebook",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                SizedBox(height: 30,),

                Row(
                  children: [
                    SizedBox(width: 68,),
                    Text("Don't have an account?",
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
                      child: Text("Sign up",
                      style: TextStyle(
                        color: Color(0xFF1D61E7),
                      ),
                     ),
                    )

                  ],
                )
              ],
            )
          ),
         ],
        ),
        ),
    );
  }
}