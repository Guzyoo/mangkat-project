import 'package:flutter/material.dart';
import 'package:majalengka_angkutan/menu/chatpage.dart';
import 'package:majalengka_angkutan/menu/historypage.dart';
import 'package:majalengka_angkutan/menu/homepage.dart';
import 'package:majalengka_angkutan/theme.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  bool _isTextVisible = true;
  bool _isContainerVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: 142,
                  width: MediaQuery.of(context).size.width,
                  color: blue1,
                ),
                Spacer(),
                Container(
                  height: 96,
                  width: MediaQuery.of(context).size.width,
                  color: blue1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isTextVisible = false;
                            _isContainerVisible = false;
                          });
                          Future.delayed(Duration(seconds: 1), () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomePage(), // Ganti dengan halaman tujuan
                              ),
                            );
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Icon(Icons.home),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isTextVisible = false;
                            _isContainerVisible = false;
                          });
                          Future.delayed(Duration(seconds: 1), () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HistoryPage(), // Ganti dengan halaman tujuan
                              ),
                            );
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Icon(Icons.library_books_outlined),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isTextVisible = false;
                            _isContainerVisible = false;
                          });
                          Future.delayed(Duration(seconds: 1), () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ChatPage(), // Ganti dengan halaman tujuan
                              ),
                            );
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Icon(Icons.chat),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isTextVisible = true;
                            _isContainerVisible =
                                true; // Pastikan container tidak terlihat saat berpindah
                          });
                        },
                        child: Container(
                          child: Stack(
                            children: [
                              AnimatedContainer(
                                width: _isContainerVisible ? 105 : 0,
                                height: _isContainerVisible ? 35 : 0,
                                decoration: BoxDecoration(
                                    color: white1,
                                    borderRadius: BorderRadius.circular(5)),
                                duration: Duration(seconds: 1),
                                curve: Curves.fastOutSlowIn,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 8),
                                      child: Icon(Icons.person_2_outlined),
                                    ),
                                    AnimatedOpacity(
                                      opacity: _isTextVisible ? 1 : 0,
                                      duration: Duration(seconds: 1),
                                      child: Container(
                                        child: Text(
                                          "Akun",
                                          style: semi5,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
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
              ],
            ),
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                        color: gray1, borderRadius: BorderRadius.circular(40)),
                    child: Icon(
                      Icons.person_2_outlined,
                      size: 50,
                      color: blue1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 90, bottom: 10, left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Akun Saya",
                          style: medium4.copyWith(color: Color(0XFF000000)),
                        ),
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => LoginPage2(),
                          //     ),
                          //   );
                          // },
                          child: Container(
                            child: Text(
                              'Edit',
                              style: medium4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Nama",
                        style: reg6,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    width: 330,
                    child: TextFormField(
                      style: light1,
                      decoration: InputDecoration(
                        hintText: 'Masukkan Nama',
                        hintStyle: light1,
                        isDense: true,
                      ),
                    ),
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
