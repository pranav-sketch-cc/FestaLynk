import 'package:flutter/material.dart';


class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
     
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            
            Container(
              child:
              Image.asset(
                "images/createimg.png",
                width: double.infinity,
              ),
            ),

            const Text("Enter your email                                                 ",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),

            SizedBox(height: 10,),

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



            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {},
                child: Text("Create")
            ),
          ],
        ),
      ),
    );
  }
}