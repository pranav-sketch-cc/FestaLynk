import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF1F3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "images/createimg.png",
              width: double.infinity,
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.all(16.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Enter your email",
                    style: TextStyle(
                      color: Color(0xFF6F7994),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "E-mail",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  const Text(
                    "Enter your College Name",
                    style: TextStyle(
                      color: Color(0xFF6F7994),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "College Name",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  const Text(
                    "Upload Event Poster",
                    style: TextStyle(
                      color: Color(0xFF6F7994),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Image.asset("images/uploadimg.png",),

                  const SizedBox(height: 20),

                  const Text(
                    "Enter Start Date",
                    style: TextStyle(
                      color: Color(0xFF6F7994),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Start Date",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),






                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1D61E7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Uploaded",
                        style: TextStyle(color: Colors.white),
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
