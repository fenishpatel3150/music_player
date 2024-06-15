
import 'package:flutter/material.dart';

Row menu_buttons(BuildContext context,String name,IconData icons) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          height: MediaQuery.of(context).size.height/16,
          width: MediaQuery.of(context).size.width/2.2,
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(50)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icons,color:Theme.of(context).colorScheme.onPrimary,),
              SizedBox(width: 10,),
              Text(name,style: TextStyle(color: Theme.of(context).colorScheme.onPrimary,fontSize:16),)
            ],
          ),
        ),
      ),
    ],
  );
}