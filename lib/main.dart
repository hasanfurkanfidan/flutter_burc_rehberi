
import 'package:burc_rehberi_proje/burc_detay.dart';
import 'package:burc_rehberi_proje/burc_lisle.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: "/burcListesi",
      routes: {
        "/":(context)=> BurcListesi(),
        "/burcListesi":(context)=>BurcListesi(),

      },
      onGenerateRoute: (RouteSettings settings){
        List<String>pathElemanlari = settings.name.split("/");
        if(pathElemanlari[1]=="burcDetay"){
          return MaterialPageRoute(builder: (context)=>BurcDetay(int.parse(pathElemanlari[2])));
        }
      },
      debugShowCheckedModeBanner: false,
      title: "Burç rehberi",
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),

    );
  }

}