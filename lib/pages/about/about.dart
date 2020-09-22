import 'package:Facemash/constants/facemash.dart';
import 'package:flutter/material.dart';

class AppInfo extends StatefulWidget {
  @override
  _AppInfoState createState() => _AppInfoState();
}

class _AppInfoState extends State<AppInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF660000),
      appBar: AppBar(
        backgroundColor: Color(0xFF660000),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              Facemash.appname,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
            // Padding(padding: EdgeInsets.only(bottom: 300)),
            Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 300)),
                Text(
                  Facemash.appversion,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      "Developed By",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      "Parth Aggarwal",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      "Mohd. Sahil",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
