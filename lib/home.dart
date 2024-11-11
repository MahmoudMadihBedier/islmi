import 'package:flutter/material.dart';
import 'package:islmi/fragments/Quran_fragment/quran_fragment.dart';
import 'package:islmi/fragments/ahadeth_fragmeny/ahadeth_fragment.dart';
import 'package:islmi/fragments/radio_fragment/radio_fragment.dart';
import 'package:islmi/fragments/sebha_fragment/sabha_fragment.dart';
import 'package:islmi/theme/theme.dart';

class Home extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover)),
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
       
        bottomNavigationBar: Theme(
          data:
              Theme.of(context).copyWith(canvasColor: ColorTheme.primaryColor),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex=value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icon/quran.png")),
                  label: "quaran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icon/ahadeth.png")),
                  label: "Ahadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icon/sebha.png")),
                  label: "Sebha"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icon/radio.png")),
                  label: "radio"),
            ],
          ),
        
        ),
        body: getBody(currentIndex)  ,
      
      ),
    );
  }
 Widget getBody(int index){
  if(index==0){
return QuranFragment();
  }else if(index==1){
    return AhadethFragment();
  }else if(index==2){
    return SabhaFragment();
  }else 
    return RadioFragment();
  
}

}
