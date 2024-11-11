import 'package:flutter/material.dart';

class HadethName extends StatelessWidget {
  String hadethName;
  HadethName(this.hadethName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        child: Text(
          textAlign: TextAlign.center,
          hadethName,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
