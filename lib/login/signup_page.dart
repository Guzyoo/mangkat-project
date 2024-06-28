import 'package:flutter/material.dart';
import 'package:majalengka_angkutan/login/loginpage.dart';
import 'package:majalengka_angkutan/theme.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  "assets/background/mjl.png",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Daftar Driver",
                      style: bold3,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 751,
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
                          padding: const EdgeInsets.only(left: 40, top: 8),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "NIK",
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
                              hintText: 'Masukkan NIK Anda',
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
                              "No. SIM C",
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
                              hintText: 'Masukkan No. SIM C Anda',
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
                              "Tipe Motor",
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
                              hintText: 'Masukkan Tipe Motor Anda',
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
                              "Plat Nomor",
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
                              hintText: 'Masukkan Plat Nomor Anda',
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
