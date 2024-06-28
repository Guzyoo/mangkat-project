import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:majalengka_angkutan/onboarding/onboarding_page1.dart';
import 'package:majalengka_angkutan/onboarding/onboarding_page3.dart';
import 'package:majalengka_angkutan/theme.dart';

class OnboardingPage2 extends StatefulWidget {
  const OnboardingPage2({super.key});

  @override
  State<OnboardingPage2> createState() => _OnboardingPage2State();
}

class _OnboardingPage2State extends State<OnboardingPage2> {
  bool _isTextVisible = false;
  bool _isMoved = false;
  bool _isReverse = false;
  bool _isTextChanged = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _isTextVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                SvgPicture.asset(
                  "assets/background/onboarding.svg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      transform: Matrix4.translationValues(
                        _isMoved
                            ? MediaQuery.of(context).size.width // Move to right
                            : 0, // Center position (default)
                        0,
                        0,
                      ),
                      child: Container(
                        width: 200,
                        height: 200,
                        child: Image.asset(
                          "assets/images/undraw_questions_re_1fy7-01 1.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 600),
                            transform: _isReverse
                                ? Matrix4.translationValues(
                                    MediaQuery.of(context).size.width * 0.07,
                                    0,
                                    0)
                                : (_isMoved
                                    ? Matrix4.translationValues(
                                        MediaQuery.of(context).size.width * 0,
                                        0,
                                        0)
                                    : Matrix4.identity()),
                            height: 4,
                            width: 16,
                            decoration: BoxDecoration(
                                color: blue2,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 600),
                          transform: _isReverse
                              ? Matrix4.translationValues(
                                  -MediaQuery.of(context).size.width * 0.08,
                                  0,
                                  0)
                              : (_isMoved
                                  ? Matrix4.translationValues(
                                      -MediaQuery.of(context).size.width *
                                          -0.07,
                                      0,
                                      0)
                                  : Matrix4.identity()),
                          height: 4,
                          width: 32,
                          decoration: BoxDecoration(
                              color: blue1,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 600),
                            transform: _isReverse
                                ? Matrix4.translationValues(
                                    -MediaQuery.of(context).size.width * 0.02,
                                    0,
                                    0)
                                : (_isMoved
                                    ? Matrix4.translationValues(
                                        MediaQuery.of(context).size.width *
                                            -0.08,
                                        0,
                                        0)
                                    : Matrix4.identity()),
                            height: 4,
                            width: 16,
                            decoration: BoxDecoration(
                                color: blue2,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    AnimatedOpacity(
                      opacity: _isTextVisible ? 1 : 0,
                      duration: Duration(seconds: 1),
                      child: Text(
                        "Solusi Transportasi",
                        style: bold1,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AnimatedOpacity(
                      opacity: _isTextVisible ? 1 : 0,
                      duration: Duration(seconds: 1),
                      child: Container(
                        width: 250,
                        child: Text(
                          "Temukan kemudahan bersama Mang-Kat, dalam memesan ojek dengan aman dan cepat",
                          style: reg1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isReverse = true;
                              _isTextChanged = true;
                            });

                            Future.delayed(Duration(seconds: 1), () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      OnboardingPage1(), // Ganti dengan halaman tujuan
                                ),
                              );
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 53,
                            height: 53,
                            decoration: BoxDecoration(
                                color: blue1,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isMoved = true;
                              _isTextChanged = true;
                            });

                            Future.delayed(Duration(seconds: 1), () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      OnboardingPage3(), // Ganti dengan halaman tujuan
                                ),
                              ).then((_) {
                                setState(() {
                                  _isMoved = false;
                                });
                              });
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 53,
                            decoration: BoxDecoration(
                              color: blue1,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomLeft: Radius.circular(40),
                              ),
                            ),
                            child: Text(
                              "Lanjut",
                              style: semi1.copyWith(color: Color(0xFFFFFFFF)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
