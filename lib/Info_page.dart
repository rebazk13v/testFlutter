import 'package:flutter/material.dart';
import 'package:kurdarina/Cinfop.dart';
import 'package:kurdarina/Sideinfo.dart';



class Infopage extends StatelessWidget {
  Cinfo cinfo;
   Infopage({super.key,required this.cinfo});
   
final List _post=[
  'post 1'
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('welcoe'),backgroundColor: Colors.transparent,),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          width: 200,
          height: 200,
          child: Image.asset('lib/images/ip143.png')),
      Container(
        width: 200,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            Cinfo cinfo = Cinfo(screen: '1920', ram:'10gb', camera: '148mp', batreey: '5000mah', icon: 'Icons.abc', battery: '');
          return Sidepage(
           cinfo: cinfo,
          );
        },),
      )
        
      ]),
    );
  }
}
