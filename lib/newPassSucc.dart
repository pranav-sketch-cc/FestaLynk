import 'package:flutter/material.dart';
import 'package:FestaLynk/login.dart';

class Newpasssucc extends StatefulWidget {

  @override
  State<Newpasssucc> createState() => _NewpasssuccState();
}

class _NewpasssuccState extends State<Newpasssucc> {

  final _visible = true;

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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 150,),
                  AnimatedOpacity(
                    opacity: _visible ? 1.0 : 0.0,
                    duration: Duration(seconds: 3),
                    child:
                    Image.asset('images/Successmark.png',width: 340,),
                  ),

                  SizedBox(height: 20,),

                  const Text("Successful !!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  ),

                  SizedBox(height: 20,),



                  const Text("Congratulations! Your password has been changed. \n                           Click continue to login",),

                  SizedBox(height: 20,),

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
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text("Log in",
                        style: TextStyle(
                          color: Colors.white,

                        ),
                      ),
                    ),
                  ),




               ],
              ),
            ),
          ),
         ],
       ),
      ),
    );
  }
}