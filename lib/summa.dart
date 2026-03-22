import 'package:flutter/material.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {

  bool isPasswordVisible = false;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            // 🔵 TOP GRADIENT + LOGO
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 80, bottom: 30),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF8EBBFF),
                    Color(0xFFF4F5F7),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 140,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Create Connect Compete",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),

            // ⬇️ MAIN CONTENT
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "Sign in to your Account",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Enter your email and password to log in",
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 20),

                  // 📧 EMAIL
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // 🔒 PASSWORD
                  TextField(
                    obscureText: !isPasswordVisible,
                    decoration: InputDecoration(
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // ☑️ REMEMBER + FORGOT
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: rememberMe,
                            onChanged: (value) {
                              setState(() {
                                rememberMe = value!;
                              });
                            },
                          ),
                          const Text("Remember me"),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Forgot Password ?"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  // 🔘 LOGIN BUTTON
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: const Color(0xFF3B6EF5),
                      ),
                      child: const Text(
                        "Log In",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ─── OR ───
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Or"),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // 🔵 GOOGLE BUTTON
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text("Continue with Google"),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // 🔵 FACEBOOK BUTTON
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text("Continue with Facebook"),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // 🔗 SIGN UP
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t have an account? "),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}