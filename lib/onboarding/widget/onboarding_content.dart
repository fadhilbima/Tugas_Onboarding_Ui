import 'package:flutter/material.dart';

class OnboardPict extends StatelessWidget {
  OnboardPict({Key? key, required this.onchange}) : super(key: key);

  final Function(int) onchange;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: MediaQuery.of(context).size.width,
      child: PageView(
        onPageChanged: (currentPage) {
          onchange(currentPage);
        },
        children: [
          Column(
            children: [
              Container(
                height: 240,
                width: 240,
                child: Image.asset('assets/images/image_1.png'),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 240,
                width: 240,
                child: Image.asset('assets/images/image_2.png'),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 240,
                width: 240,
                child: Image.asset('assets/images/image_3.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
