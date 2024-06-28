import 'package:flutter/material.dart';
import 'package:majalengka_angkutan/detail/map_page.dart';
import 'package:majalengka_angkutan/menu/chatpage.dart';
import 'package:majalengka_angkutan/menu/historypage.dart';
import 'package:majalengka_angkutan/menu/profilepage.dart';
import 'package:majalengka_angkutan/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  height: 96,
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
                            _isTextVisible = true;
                            _isContainerVisible = true;
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
                                      child: Icon(Icons.home),
                                    ),
                                    AnimatedOpacity(
                                      opacity: _isTextVisible ? 1 : 0,
                                      duration: Duration(seconds: 1),
                                      child: Container(
                                        child: Text(
                                          "Home",
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
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Text(
                          "Hai, Irki Septian",
                          style: bold4,
                        ),
                      ),
                      Icon(Icons.notification_add_outlined)
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 319,
                    height: 54,
                    decoration: BoxDecoration(
                        color: white1,
                        border: Border.all(width: 1, color: white2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Icon(Icons.search_outlined),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MapScreen(), // Ganti dengan halaman tujuan
                              ),
                            );
                          },
                          child: Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Cari Tempat?',
                                hintStyle: medium2,
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 1,
                            height: 24,
                            color: gray2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: 142,
                            height: 38,
                            decoration: BoxDecoration(
                              color: white3,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.schedule_outlined),
                                Text(
                                  "Terbaru",
                                  style: medium3,
                                ),
                                Icon(Icons.keyboard_arrow_down_outlined)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Dismissible(
                      key: UniqueKey(),
                      direction: DismissDirection.horizontal,
                      onDismissed: (direction) {
                        DismissDirection.horizontal;
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                            "assets/images/container.png"),
                                      ),
                                      Positioned(
                                        left: 133,
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 110,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: white1,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 10),
                                            child: Text(
                                              "Perjalanan lebih cepat dan aman ya di Mang-kat in aja !",
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                            "assets/images/container.png"),
                                      ),
                                      Positioned(
                                        left: 133,
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 110,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: white1,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 10),
                                            child: Text(
                                              "Perjalanan lebih cepat dan aman ya di Mang-kat in aja !",
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 23, right: 20),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white1),
                              child: Icon(Icons.map_outlined),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40, right: 10),
                            child: Text(
                              "Pilih tempat tersimpan",
                              style: reg5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Icon(Icons.arrow_forward),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 40),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white1),
                              child: Icon(Icons.star),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40, right: 45),
                            child: Text(
                              "Tempat favorit",
                              style: reg5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Icon(Icons.arrow_forward),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 40),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white1),
                              child: Icon(Icons.business_center),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              "Buat pesanan terjadwal",
                              style: reg5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 33),
                            child: Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "Di Sekitar anda",
                    style: semi4,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
