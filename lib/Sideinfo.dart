import 'package:flutter/material.dart';
import 'package:kurdarina/Cinfop.dart';


class Sidepage extends StatefulWidget {
Cinfo cinfo;

 Sidepage({super.key, required this.cinfo});

  @override
  State<Sidepage> createState() => _SidepageState();
}

class _SidepageState extends State<Sidepage> {
  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Icon(Icons.check_box_outline_blank),
                    Column(children: [
                      Container(child: Text('6.7'),),
          
          Container(child: Text(widget.cinfo.screen),),
                    ],)
        ],);
  }
}