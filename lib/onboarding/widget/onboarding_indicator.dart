import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({Key? key, required this.currentPage}) : super(key: key);

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IndicatorItem(activated: currentPage == 0,),
        SizedBox(width: 5),
        IndicatorItem(activated: currentPage == 1,),
        SizedBox(width: 5),
        IndicatorItem(activated: currentPage == 2,),
      ],
    );
  }
}

class IndicatorItem extends StatelessWidget {
  const IndicatorItem({Key? key, this.activated = false}) : super(key: key);

  final bool activated;

  @override
  Widget build(BuildContext context) {
    if (activated) {
      return Container(
        height: 8,
        width: 30,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20)
        ),
      );
    } return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: Color(0xffBCC8E7),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

