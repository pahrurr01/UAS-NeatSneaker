// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:laundrysepatu/pages/register_pages.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context)
        .size
        .width; // Mendapatkan ukuran layar device otomatis (responsive)

    TextEditingController userNameText = TextEditingController();
    TextEditingController passwordText = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              // Untuk mengatur Background halaman ============================

              children: [
                Expanded(
                  // flex: 3,
                  child: Container(
                    color: Color(0xff357498),
                  ),
                )
              ],
            ),
            // komponen Login ================================================
            //Logo
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 60),
                      child: Image.asset(
                        "assets/Logo.png",
                        scale: 2,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      width: screenWidth,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset:
                                const Offset(0, 3), // mengatur posisi bayangan
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 38, 0, 20),
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                color: Color(0xff357498),
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: TextField(
                              controller: userNameText,
                              decoration: const InputDecoration(
                                label: Text("Email"),
                                prefixIcon: Icon(Icons.mail),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: TextField(
                              controller: passwordText,
                              decoration: const InputDecoration(
                                label: Text("Password"),
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: Icon(Icons.remove_red_eye_sharp),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Lupa Password?",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15, color: Color(0xff357498)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                            width: screenWidth,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const RegisterPage();
                                }));
                              },
                              //Tombol login
                              style: ElevatedButton.styleFrom(
                                  elevation: 8,
                                  backgroundColor: Color(0xff357498),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: Container(
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    "LOGIN",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth / 5),
                      child: Row(
                        children: [
                          Text(
                            "Belum Punya Akun?",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return const RegisterPage();
                              }));
                            },
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(fontSize: 16),
                              primary: Colors.yellow,
                            ),
                            child: Text("Register"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
