import 'package:flutter/material.dart';
import 'package:majalengka_angkutan/login/loginpage.dart';
import 'package:majalengka_angkutan/menu/homepage.dart';
import 'package:majalengka_angkutan/theme.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
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
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          alignment: Alignment.center,
                          height: 37,
                          width: 37,
                          decoration: BoxDecoration(
                              color: white1,
                              borderRadius: BorderRadius.circular(20)),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: blue1,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                  ),
                  Container(
                    height: 489,
                    width: 289,
                    decoration: BoxDecoration(
                        color: gray1, borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset("assets/images/login.png"),
                        ),
                        Text(
                          "Masuk",
                          style: bold2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Nama Pengguna/Email",
                              style: medium1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 202,
                          height: 25,
                          decoration: BoxDecoration(
                              color: white1,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            style: light1,
                            decoration: InputDecoration(
                              hintText: 'Masukkan Nama Pengguna/Email',
                              hintStyle: light1,
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 8),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Kata Sandi",
                              style: medium1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 202,
                          height: 25,
                          decoration: BoxDecoration(
                              color: white1,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            style: light1,
                            decoration: InputDecoration(
                              hintText: 'Masukkan Kata Sandi Anda',
                              hintStyle: light1,
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              alignment: Alignment.center,
                              width: 198,
                              height: 37,
                              decoration: BoxDecoration(
                                color: blue1,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Lanjut",
                                textAlign: TextAlign.center,
                                style: semi3,
                              ),
                            ),
                          ),
                        )
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
