import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeName = 'Home';

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset("assets/images/background.png").image,
          fit: BoxFit.cover
        )
       ),
      child: Scaffold(
        backgroundColor:  Colors.transparent,
        appBar: AppBar(
          centerTitle:true ,
          title: Text("Islami" ,style: TextStyle(color: Colors.black, fontSize: 25),),
        ),
        body:Container() ,
        bottomNavigationBar: Theme(
          data:  Theme.of(context).copyWith(
            canvasColor: Color(0xffB7935F)
          ),
          child: BottomNavigationBar(
            
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"), 
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
