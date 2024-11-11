import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islmi/fragments/Quran_fragment/sura_name.dart';
import 'package:islmi/fragments/Quran_fragment/sura_vares.dart';
import 'package:islmi/theme/theme.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String SuraContent = "";

  List<String> SuraLines = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArge arge =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArge;
    readFile(arge.fileName);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Islami",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        body: Center(
          child: Container(
              margin: EdgeInsets.only(top: 25, right: 10, left: 10, bottom: 50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.8)),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "${arge.suraName}",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.play_arrow),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: ColorTheme.primaryColor,
                ),
                Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: ListView.builder(
                                        itemCount: SuraLines.length,
                                        itemBuilder: (context, index) {
                      return SuraVares(SuraLines[index]);
                                        },
                                      ),
                    )),
              ])),
        ),
      ),
    );
  }

  void readFile(String fileName) async {
    SuraContent = await rootBundle.loadString("assets/files/$fileName");
    SuraLines = SuraContent.split("\n");
    setState(() {});
  }
}
