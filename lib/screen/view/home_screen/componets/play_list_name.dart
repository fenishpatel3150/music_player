
import 'package:flutter/material.dart';
Widget playlist_name(String name) {
  return Padding(
    padding: const EdgeInsets.only(top: 30),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Container(
              width: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff1f1f1f)),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text('More',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 13),))),
        )
      ],
    ),
  );
}