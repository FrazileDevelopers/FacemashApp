import 'package:Facemash/generated/l10n.dart';
import 'package:Facemash/pages/about/about.dart';
import 'package:Facemash/pages/wallpapers/walls.dart';
import 'package:Facemash/constants/facemash.dart';
import 'package:Facemash/providers/fetchcat.dart';
import 'package:provider/provider.dart';
import '../../services/response.dart';

import 'package:flutter/material.dart';
import 'package:Facemash/widget/widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void choiceAction(String choice) {
    if (choice == S.of(context).info) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return AppInfo();
          },
        ),
      );
    }
  }

  // fetchData() async {
  //   setState(() {
  //     isLoading = true;
  //   });
  //   var res = await http.get(Facemash.url);
  //   var decodedRes = jsonDecode(res.body);
  //   // print(decodedRes.toString());
  //   usersapi = FacemashAPI.fromJson(decodedRes);
  //   setState(() {
  //     isLoading = false;
  //   });
  // }

  @override
  void initState() {
    Provider.of<Fetchcat>(context, listen: false).fetchData();
    S.load(Locale("en", "US"));
    // S.load(Locale("pl", "PL"));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<Fetchcat>(context);
    List<String> choices = <String>[S.of(context).info];
    return Scaffold(
      // backgroundColor: Color(0xFF660000),
      appBar: AppBar(
        backgroundColor: Color(0xFF660000),
        title: brandName(),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(
                    choice,
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: categories.isfetching
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              itemBuilder: (context, index) => ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Walls(categories.getWalls()[index].category),
                  ),
                ),
                title: Text(
                  categories.getWalls()[index].category,
                  style: TextStyle(
                    color: Color(0xFF660000),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => Divider(
                color: Color(0xFF660000),
              ),
              itemCount: categories.getWalls().length,
            ),
    );
  }
}
