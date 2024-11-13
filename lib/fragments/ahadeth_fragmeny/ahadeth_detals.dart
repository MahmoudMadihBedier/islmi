import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islmi/fragments/ahadeth_fragmeny/hadeth_name.dart';
import 'package:islmi/fragments/ahadeth_fragmeny/hadeth_varse.dart';
import 'package:islmi/theme/theme.dart';

class AhadethDetails extends StatefulWidget {
  static const String routeName = "ahadeth_details";

  @override
  State<AhadethDetails> createState() => _AhadethDetailsState();
}

class _AhadethDetailsState extends State<AhadethDetails> {
  String hadethContant = "";

  List<String> hadethLines = [];

  @override
  Widget build(BuildContext context) {
    HadethDataArg arge =
        ModalRoute.of(context)?.settings.arguments as HadethDataArg;
    readfile(arge.fileName);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/background.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text(
              "Islami",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(top: 25, right: 10, left: 10, bottom: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white.withOpacity(0.5),
            ),
            child: Center(
              child: Column(
                children: [
                  Text("${arge.hadethName}"),
                  Divider(
                    thickness: 2,
                    color: ColorTheme.primaryColor,
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: hadethLines.length,
                    itemBuilder: (context, index) {
                      return HadethVarse(hadethLines[index]);
                    },
                  ))
                ],
              ),
            ),
          )),
    );
  }

  void readfile(String fileName) async {
    String fileContent =
        await rootBundle.loadString("assets/hadeth/$fileName");
    hadethContant = fileContent;
    hadethLines = hadethContant.split("\n");
    hadethLines.removeAt(0);
    setState(() {});
  }
}
