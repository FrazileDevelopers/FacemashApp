import 'package:Facemash/constants/facemash.dart';
import 'package:flutter/material.dart';

Widget brandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "F",
        style: TextStyle(
          color: Colors.blue[400],
        ),
      ),
      Text(
        "ace",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      Text(
        "M",
        style: TextStyle(
          color: Colors.blue[400],
        ),
      ),
      Text(
        "ash",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  );
}

// Widget about() {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: <Widget>[
//       Text(
//         "App Name" + Facemash.appname,
//       ),
//       Text(
//         "Version" + Facemash.appversion,
//       ),
//       Text(
//         "Creator" + Facemash.appcreator,
//       ),
//     ],
//   );
// }
