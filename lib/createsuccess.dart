import 'package:FestaLynk/Home.dart';
import 'package:flutter/material.dart';



class Createsuccess extends StatefulWidget {
  const Createsuccess({super.key});
  @override
  State<Createsuccess> createState() => _CreatesuccessState();
}

class _CreatesuccessState extends State<Createsuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF1F3),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(height: 150,),

              Image.asset(
                "images/FestaLynk_logo_with_tagline.png",
              ),
              
              SizedBox(height: 100,),
              
              Image.asset("images/Sticker.png" ,),
              
              SizedBox(height: 10,),
              
              Text(
                "  Successful !!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ) 
              ),
              
              Text("              Congratulations! Your event has\nbeen submitted successfully. Click to continue",
              style: TextStyle(fontSize: 15,color: Colors.grey),),

              SizedBox(height: 10),

              SizedBox(
                width: 330,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1D61E7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              


            ],
          ),
        ),
      )







    );
 }
}