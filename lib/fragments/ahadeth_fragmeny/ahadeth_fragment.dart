import 'package:flutter/material.dart';
import 'package:islmi/fragments/ahadeth_fragmeny/hadeth_name.dart';
import 'package:islmi/theme/theme.dart';

class AhadethFragment extends StatelessWidget {
  final List<String> ahadethList =
      List.generate(50, (index) => "الحديث رقم ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child:
                  Image(image: AssetImage("assets/images/ahadethimage.png"))),
          Divider(
            color: ColorTheme.primaryColor,
            thickness: 2,
          ),
          Text(
            "Ahadeth  Name ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Divider(
            color: ColorTheme.primaryColor,
            thickness: 2,
          ),
          Expanded(
            flex: 7,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 1,
                  color: ColorTheme.primaryColor,
                );
              },
              itemCount: ahadethList.length,
              itemBuilder: (context, index) {
                return HadethName(ahadethList[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
