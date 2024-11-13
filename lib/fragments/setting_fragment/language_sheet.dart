import 'package:flutter/material.dart';
import 'package:islmi/provideor/app_providor.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatelessWidget {
  const LanguageSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvidor>(context);
    return Container(
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changeLanguage("en");
              },
              child: getLanguage("English", false)),
          InkWell(
              onTap: () {
                provider.changeLanguage("ar");
              },
              child: getLanguage("العريبه", true)),
        ],
      ),
    );
  }

  Widget getLanguage(String text, bool isSelect) {
    if (isSelect) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            Icon(Icons.check),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
          ],
        ),
      );
    }
  }
}
