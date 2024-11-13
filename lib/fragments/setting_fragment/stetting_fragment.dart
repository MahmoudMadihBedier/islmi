import 'package:flutter/material.dart';
import 'package:islmi/fragments/setting_fragment/language_sheet.dart';

class SettingFragment extends StatefulWidget {
  @override
  State<SettingFragment> createState() => _SettingFragmentState();
}

class _SettingFragmentState extends State<SettingFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Language "),
            InkWell(
              onTap: () {
                ShowButtonsheet();
              },
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Text("English"),
              ),
            )
          ],
        ),
      ),
    );
  }

  void ShowButtonsheet() {
    showModalBottomSheet(
        context: (context),
        builder: (context) {
          return LanguageSheet();
         
        });
  }
}
