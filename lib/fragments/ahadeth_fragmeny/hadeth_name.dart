import 'package:flutter/material.dart';
import 'package:islmi/fragments/ahadeth_fragmeny/ahadeth_detals.dart';

class HadethName extends StatelessWidget {
  String hadethName;
  int number;
  HadethName(this.hadethName, this.number);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AhadethDetails.routeName,
        arguments: HadethDataArg(hadethName, "h${number+1}.txt")
        );
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
  class HadethDataArg {
    String hadethName;
    String fileName;

    HadethDataArg(this.hadethName, this.fileName);
  }

