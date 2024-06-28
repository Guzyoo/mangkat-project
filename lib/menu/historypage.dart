import 'package:flutter/material.dart';
import 'package:majalengka_angkutan/menu/chatpage.dart';
import 'package:majalengka_angkutan/menu/homepage.dart';
import 'package:majalengka_angkutan/menu/profilepage.dart';
import 'package:majalengka_angkutan/theme.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
                  height: 57,
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
                                      child: Icon(Icons.library_books_outlined),
                                    ),
                                    AnimatedOpacity(
                                      opacity: _isTextVisible ? 1 : 0,
                                      duration: Duration(seconds: 1),
                                      child: Container(
                                        child: Text(
                                          "Aktivitas",
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
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isTextVisible = false;
                            _isContainerVisible =
                                false; // Pastikan container tidak terlihat saat berpindah
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
                            _isTextVisible = false;
                            _isContainerVisible =
                                false; // Pastikan container tidak terlihat saat berpindah
                          });
                          Future.delayed(Duration(seconds: 1), () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProfilPage(), // Ganti dengan halaman tujuan
                              ),
                            );
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Icon(Icons.person_2_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(
                "Alamat Tersimpan",
                style: bold5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Dalam Proses"),
                      Text("Pesanan Terjadwal"),
                      Text("Riwayat"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 4,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4), color: blue2),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 30, right: 30),
              child: Container(
                height: 132,
                width: 326,
                decoration: BoxDecoration(
                    color: white1, borderRadius: BorderRadius.circular(4)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
