
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


AppBar appBarOne() {

  return AppBar(
    toolbarHeight: 40,
    backgroundColor: Colors.white,
    elevation: 0,
    actions: [
      CircleAvatar(
        radius: 19,
        backgroundColor: const Color(0xFFf3f4f5),
        child: InkWell(
          onTap: (){

          },
          child: Icon(
            CupertinoIcons.mail_solid,
            color: Colors.black,
            // size: 42.h,
          ),
        ),
      ),
      SizedBox(width: 5),
      GestureDetector(
        onTap: () {

        },
        child: CircleAvatar(
          radius: 19,
          backgroundColor: const Color(0xFFf3f4f5),
          child: Icon(
            Icons.person,
            color: Colors.black,
          ),
        ),
      ),
      SizedBox(width: 20),
    ],
  );
}
