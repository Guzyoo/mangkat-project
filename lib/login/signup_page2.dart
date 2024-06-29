import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:majalengka_angkutan/login/loginpage.dart';
import 'package:majalengka_angkutan/menu/homepage.dart';
import 'package:majalengka_angkutan/theme.dart';

class SignupPage2 extends StatefulWidget {
  const SignupPage2({super.key});

  @override
  State<SignupPage2> createState() => _SignupPage2State();
}

class _SignupPage2State extends State<SignupPage2> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _repeatpasswordController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repeatpasswordController.dispose();
    _genderController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

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
                            controller: _nameController,
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
                            controller: _emailController,
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
                            controller: _passwordController,
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
                            controller: _repeatpasswordController,
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
                            controller: _genderController,
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
                            controller: _phoneController,
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
                        GestureDetector(
                          onTap: SignUp,
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

  Future SignUp() async {
    String name = _nameController.text.trim();
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String phone = _phoneController.text.trim();

    if (passwordConfirmed()) {
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        await addUserDetails(name, email, password, phone);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      } catch (error) {
        print("Error: ${error.toString()}");
      }
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _repeatpasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  Future addUserDetails(
      String name, String email, String password, String phone) async {
    await FirebaseFirestore.instance.collection('user').add({
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
    });
  }
}
