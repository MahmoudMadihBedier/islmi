import 'package:flutter/material.dart';

class HadethVarse extends StatelessWidget {
  String vares;
  HadethVarse(this.vares);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        vares,
      ),
    );
  }
}
