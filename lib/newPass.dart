// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:FestaLynk/newPassSucc.dart';

class Newpass extends StatefulWidget {

  @override
  State<Newpass> createState() => _NewpassState();
}

class _NewpassState extends State<Newpass> {

  bool isPasswordVisible = false;
  bool isPasswordVisible2 = false;

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
                const Text("Set a new password  ",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10,),

              const Text("Create a new password. Ensure it differs from previous ones for security                                       ",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),

              SizedBox(height: 40,),

                  TextField(
                    obscureText: !isPasswordVisible,
                    decoration: InputDecoration(
                        hintText: "Create new password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(Icons.lock, color: Colors.grey),
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

                  SizedBox(height: 20,),

                  TextField(
                    obscureText: !isPasswordVisible2,
                    decoration: InputDecoration(
                        hintText: "Confirm new password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(Icons.lock, color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(

                            isPasswordVisible2? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: (){
                            setState(() {
                              isPasswordVisible2 = !isPasswordVisible2;
                            });
                          },
                        )
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
                          MaterialPageRoute(builder: (context) => Newpasssucc()),
                        );
                      },
                      child: Text("Update Password",
                        style: TextStyle(
                          color: Colors.white,

                        ),
                      ),
                    ),
                  ),

          ],
         ),
        ),
       ],
      ),
    ),
    );
  }
}