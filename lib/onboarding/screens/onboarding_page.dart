import 'package:flutter/material.dart';
import 'package:sephora/onboarding/widget/onboarding_content.dart';
import 'package:sephora/onboarding/widget/onboarding_indicator.dart';
import 'package:sephora/onboarding/widget/onboarding_text.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController pictChange = PageController();
  int _currentPage = 0;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE1E8F6),
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 66),
                      child: Text('BANK SEPHORA', style: TextStyle(fontSize: 20, color: Color(0xff2F82FF)),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 71),
                      child: Switch(
                          value: isSwitched,
                          onChanged: (value){
                            setState(() {
                              isSwitched = value;
                            });
                          }
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 58),
                child: Row(
                  children: [
                    OnboardPict(onchange: (currentPage){
                      setState(() {
                        _currentPage = currentPage;
                      });
                    })
                  ],
                )
              ),
              SizedBox(height: 30),
              Indicator(currentPage: _currentPage),
              SizedBox(height: 30),
              TextIndicator(currentText: _currentPage),
              SizedBox(height: 61),
              InkWell(
                onTap: (){},
                child: Container(
                    width: 335,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text('Buat Akun Sekarang', style: TextStyle(fontSize: 14, color: Colors.white),),
                    )
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      child: Image.asset('assets/images/Chat.png'),
                    ),
                    SizedBox(width: 6.5),
                    Text('Butuh Bantuan?')
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
