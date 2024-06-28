import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:majalengka_angkutan/onboarding/onboarding_page2.dart';
import 'package:majalengka_angkutan/theme.dart';

class OnboardingPage1 extends StatefulWidget {
  const OnboardingPage1({super.key});

  @override
  State<OnboardingPage1> createState() => _OnboardingPage1State();
}

class _OnboardingPage1State extends State<OnboardingPage1> {
  bool _isMoved = false;
  bool _isTextChanged = false;
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
                          _isMoved ? MediaQuery.of(context).size.width : 0,
                          _isMoved ? MediaQuery.of(context).size.height : 0,
                          0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Image.asset(
                          "assets/images/undraw_mornings_re_cofi-01 1.png",
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
                        AnimatedContainer(
                          duration: Duration(milliseconds: 600),
                          transform: _isMoved
                              ? Matrix4.translationValues(
                                  MediaQuery.of(context).size.width * 0.08,
                                  0,
                                  0)
                              : Matrix4.identity(),
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
                            transform: _isMoved
                                ? Matrix4.translationValues(
                                    -MediaQuery.of(context).size.width * 0.07,
                                    0,
                                    0)
                                : Matrix4.identity(),
                            height: 4,
                            width: 16,
                            decoration: BoxDecoration(
                                color: blue2,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 600),
                            transform: _isMoved
                                ? Matrix4.translationValues(
                                    MediaQuery.of(context).size.width * 0.02,
                                    0,
                                    0)
                                : Matrix4.identity(),
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
                      opacity: _isTextChanged ? 0 : 1,
                      duration: Duration(seconds: 1),
                      child: Text(
                        "Selamat Datang di Mang-Kat",
                        style: bold1,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AnimatedOpacity(
                      opacity: _isTextChanged ? 0 : 1,
                      duration: Duration(seconds: 1),
                      child: Container(
                        width: 250,
                        child: Text(
                          "Aplikasi yang bikin perjalanan anda mudah dan aman",
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
                        Container(
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
                                      OnboardingPage2(), // Ganti dengan halaman tujuan
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
