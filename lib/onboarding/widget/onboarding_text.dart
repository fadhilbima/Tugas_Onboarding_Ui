import 'package:flutter/material.dart';

class TextIndicator extends StatelessWidget {
  const TextIndicator({Key? key, required this.currentText}) : super(key: key);
  final int currentText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextIndicatorItem(textActivate: currentText)
      ],
    );
  }
}

class TextIndicatorItem extends StatelessWidget {
  TextIndicatorItem({Key? key, required this.textActivate}) : super(key: key);
  int textActivate;

  @override
  Widget build(BuildContext context) {
    if (textActivate==0){
      return Container(
          height: 76,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text('Kemudahan dalam Genggaman', style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
              SizedBox(height: 10),
              Text('Hanya dengan 3 langkah registrasi, nikmati segala', style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
              Text('kemudahan dalam bertransaksi', style: TextStyle(fontSize: 14), textAlign: TextAlign.center)
            ],
          ),
      );
    } else if (textActivate==1){
      return Container(
        height: 76,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text('Transaksi Internasional', style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
            SizedBox(height: 10),
            Text('Nikmati kemudahan bertransaksi di seluruh dunia', style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
            Text('dengan kartu VISA dan Mastercard', style: TextStyle(fontSize: 14), textAlign: TextAlign.center)
          ],
        ),
      );
    } else {
      return Container(
        height: 76,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text('Keamanan Dalam Bertransaksi', style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
            SizedBox(height: 10),
            Text('Kemanan dalam bertransaksi Anda merupakan', style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
            Text('prioritas bagi kami', style: TextStyle(fontSize: 14), textAlign: TextAlign.center)
          ],
        ),
      );
    }
  }
}
