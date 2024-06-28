import 'package:flutter/material.dart';
import 'package:majalengka_angkutan/login/loginpage2.dart';
import 'package:majalengka_angkutan/login/signup_page.dart';
import 'package:majalengka_angkutan/login/signup_page2.dart';
import 'package:majalengka_angkutan/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/background/bg_daftar.png",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                  ),
                  Container(
                    height: 216,
                    width: 289,
                    decoration: BoxDecoration(
                        color: gray1, borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Daftar",
                          style: bold2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupPage(),
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 198,
                            height: 37,
                            decoration: BoxDecoration(
                                color: white1,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Sebagai Driver",
                              textAlign: TextAlign.center,
                              style: semi2,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupPage2(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Container(
                              alignment: Alignment.center,
                              width: 198,
                              height: 37,
                              decoration: BoxDecoration(
                                  color: white1,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Sebagai Penumpang",
                                textAlign: TextAlign.center,
                                style: semi2,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sudah punya akun?',
                              style: reg2,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage2(),
                                  ),
                                );
                              },
                              child: Container(
                                child: Text(
                                  'Masuk',
                                  style: reg3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
