import 'package:flutter/material.dart';

class SuraVares extends StatelessWidget {
  String vares;
  SuraVares(this.vares);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(vares,
      textAlign: TextAlign.end,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
      ),
    );
  }
}
