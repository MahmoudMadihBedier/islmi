import 'package:flutter/material.dart';
import 'package:islmi/fragments/Quran_fragment/sura_details.dart';

class SuraName extends StatelessWidget {
  String suraName;
  int fileName;
  SuraName(this.suraName,this.fileName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
        arguments:  SuraDetailsArge(suraName,"${fileName+1}.txt"),
        );
      },
      child: Container(
        child: Text(
          suraName,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
class SuraDetailsArge{
  String suraName;
  String fileName;
  SuraDetailsArge(this.suraName,this.fileName);
}