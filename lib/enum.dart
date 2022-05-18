import 'dart:core';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Thu{
  monday,tuesday,wenesday,thusday,friday
}

Chonthu(Thu thu){
  switch(thu){
    case Thu.monday:
      return "Hom nay la thu hai";
    case Thu.tuesday:
      return "Hom nay la thu ba";
    case Thu.wenesday:
      return "hom nay la thu tu";
    case Thu.thusday:
      return "hom nay la thu sau";
    case Thu.friday:
      return "hom nay la thu bay";
  }
}
 List tuoi  = [12,13,15,20];
 List sized = ["S","L","X","U"];
 List<Color> mausacyeuthich = [
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.orange,
   Colors.green
];