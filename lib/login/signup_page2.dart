import 'package:flutter/material.dart';
import 'package:majalengka_angkutan/login/loginpage.dart';
import 'package:majalengka_angkutan/theme.dart';

class SignupPage2 extends StatefulWidget {
  const SignupPage2({super.key});

  @override
  State<SignupPage2> createState() => _SignupPage2State();
}

class _SignupPage2State extends State<SignupPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Image.asset(
                "assets/background/bg_daftar.png",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      child: Text(
                        "Daftar Penumpang",
                        style: bold3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 544,
                    width: 289,
                    decoration: BoxDecoration(
                        color: gray1, borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            "assets/images/logo2.png",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Nama Pengguna",
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
                              hintText: 'Masukkan Nama Pengguna',
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
                              "Alamat Email",
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
                              hintText: 'Masukkan Email Anda',
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
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 8),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Konfirmasi Kata Sandi Anda",
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
                              hintText: 'Konfirmasi Kata Sandi Anda',
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
                              "Jenis Kelamin",
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
                              hintText: 'Masukkan Jenis Kelamin Anda',
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
                              "No. HP",
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
                              hintText: 'Masukkan No. HP Anda',
                              hintStyle: light1,
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                            ),
                          ),
                        ),
                        Padding(
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
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 1,
                                color: blue3,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'atau',
                                style: reg4,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 80,
                                height: 1,
                                color: blue3,
                              ),
                            ],
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
